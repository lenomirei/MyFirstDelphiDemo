unit AccountFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, ExtCtrls, AccountUnit;

type
  TFrame3 = class(TFrame)
    Panel5: TPanel;
    account_panel_: TPanel;
    account_listbox_: TListBox;
    info_panel_: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    email_address_edit_: TEdit;
    password_edit_: TEdit;
    display_name_edit_: TEdit;
    send_name_edit_: TEdit;
    activated_combobox_: TComboBox;
    timer_checkbox_: TCheckBox;
    timer_combobox_: TComboBox;
    sync_contacts_checkbox_: TCheckBox;
    sync_calendar_checkbox_: TCheckBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure CMShowingChanged(var Mess: TMessage); message CM_SHOWINGCHANGED;
    procedure account_listbox_Click(Sender: TObject);
    procedure timer_checkbox_Click(Sender: TObject);
    procedure activated_combobox_Change(Sender: TObject);

  private
    { Private declarations }
    procedure InitializeComboBox();
    procedure InitializeAccounts();
    procedure InitializeAccountListBox();
    procedure UpdateInfoPanel();
    procedure EnableCheckboxs();

  public
    { Public declarations }
    account_array_ : AccountArray;
    current_account_ : TAccount;


      
  end;

implementation

{$R *.dfm}

procedure TFrame3.InitializeAccounts();
begin
  account_array_[0].emailaddress := 'foxmail@foxmail.com';
  account_array_[0].password := 'foxmail';
  account_array_[0].displayname := 'foxmail(foxmail)';
  account_array_[0].sendname := 'foxmail@foxmail.com';
  account_array_[0].activatedstatus := NOTACTIVATED;
  account_array_[0].timedcollect := true;
  account_array_[0].synccontacts := false;
  account_array_[0].synccalendar := false;
  account_array_[0].proxytype := DEFAULTPROXY;

  account_array_[1].emailaddress := 'test@foxmail.com';
  account_array_[1].password := 'test';
  account_array_[1].displayname := 'test(test)';
  account_array_[1].sendname := 'test@foxmail.com';
  account_array_[1].activatedstatus := ACTIVATED;
  account_array_[1].timedcollect := true;
  account_array_[1].synccontacts := true;
  account_array_[1].synccalendar := false;
  account_array_[1].proxytype := CUSTOMPROXY;

  current_account_ := account_array_[0];
end;

procedure TFrame3.CMShowingChanged(var Mess: TMessage);
var
  i : integer;
begin
  inherited;

  if Showing then
  begin
    InitializeComboBox();
    InitializeAccounts();
    InitializeAccountListBox();
    account_listbox_.ItemIndex := 0;
    account_listbox_Click(account_listbox_);
  end
  else
  begin
    account_listbox_.Clear();
    activated_combobox_.Clear();
  end;
end;

procedure TFrame3.InitializeComboBox();
begin
  activated_combobox_.Items.Add('账号不活动');
  activated_combobox_.Items.Add('账号活动');
  activated_combobox_.ItemIndex := 0;
end;

procedure TFrame3.InitializeAccountListBox();
var
  i : integer;
begin
  for i := 0 to high(account_array_) - low(account_array_) do
  begin
    account_listbox_.Items.Add(account_array_[i].displayname);
  end;
end;

procedure TFrame3.account_listbox_Click(Sender: TObject);
begin
  current_account_ := account_array_[(Sender as TListBox).ItemIndex];
  UpdateInfoPanel();
end;

procedure TFrame3.UpdateInfoPanel();
begin
  email_address_edit_.Text := current_account_.emailaddress;
  password_edit_.Text := current_account_.password;
  display_name_edit_.Text := current_account_.displayname;
  send_name_edit_.Text := current_account_.sendname;
  activated_combobox_.ItemIndex := ord(current_account_.activatedstatus);
  timer_checkbox_.Checked := current_account_.timedcollect;
  sync_contacts_checkbox_.Checked := current_account_.synccontacts;
  sync_calendar_checkbox_.Checked := current_account_.synccalendar;
  EnableCheckboxs();
end;

procedure TFrame3.EnableCheckboxs();
begin
  // 设置checkbox的启用关系等
  if activated_combobox_.ItemIndex = 0 then
  begin
    timer_checkbox_.Enabled := false;
    sync_contacts_checkbox_.Enabled := false;
    sync_calendar_checkbox_.Enabled := false;
  end
  else
  begin
    timer_checkbox_.Enabled := true;
    sync_contacts_checkbox_.Enabled := true;
    sync_calendar_checkbox_.Enabled := true;
  end;
  if timer_checkbox_.Checked and timer_checkbox_.Enabled then
    timer_combobox_.Enabled := true
  else
    timer_combobox_.Enabled := false;
end;

procedure TFrame3.timer_checkbox_Click(Sender: TObject);
begin
  timer_combobox_.Enabled := (Sender as TCheckbox).Checked;
end;

procedure TFrame3.activated_combobox_Change(Sender: TObject);
begin
  current_account_.activatedstatus := TActivateStatus((Sender as TComboBox).ItemIndex);
  EnableCheckboxs();
end;

end.
