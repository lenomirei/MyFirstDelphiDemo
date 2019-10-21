unit AccountFrameUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, ExtCtrls, AccountUnit, RadioButton1, ComCtrls;

type
  TAccountFrame = class(TFrame)
    FAccountListbox: TListBox;
    FAccountInfoPanel: TPanel;
    TEmailAddressLabel: TLabel;
    TPasswordLabel: TLabel;
    TDisplayNameLabel: TLabel;
    TSendNameLabel: TLabel;
    Label5: TLabel; // 无意义的标签，仅用于显示
    Label6: TLabel; // 无意义的标签，仅用于显示
    FNewButton: TButton;
    FImportButton: TButton;
    FDeleteButton: TButton;
    FEmailAddressEdit: TEdit;
    FPassworkEdit: TEdit;
    FDisplayNameEdit: TEdit;
    FSendNameEdit: TEdit;
    FActivatedCombobox: TComboBox;
    FTimerCheckbox: TCheckBox;
    FTimerCombobox: TComboBox;
    FSyncContactsCheckbox: TCheckBox;
    FSyncCalendarCheckbox: TCheckBox;
    procedure CMShowingChanged(var Mess: TMessage); message CM_SHOWINGCHANGED;
    procedure FAccountListboxClick(Sender: TObject);
    procedure FTimerCheckboxClick(Sender: TObject);
    procedure FActivatedComboboxChange(Sender: TObject);

  private
    { Private declarations }

    procedure InitializeComboBox();
    procedure InitializeAccounts();
    procedure InitializeAccountListBox();
    procedure UpdateInfoPanel();
    procedure EnableCheckboxs();

  public
    { Public declarations }
    AccountArray : TAccountArray;
    CurrentAccount : TAccount;

  end;

implementation

{$R *.dfm}

procedure TAccountFrame.InitializeAccounts();
begin
  AccountArray[0].emailaddress := 'foxmail@foxmail.com';
  AccountArray[0].password := 'foxmail';
  AccountArray[0].displayname := 'foxmail(foxmail)';
  AccountArray[0].sendname := 'foxmail@foxmail.com';
  AccountArray[0].activatedstatus := NOTACTIVATED;
  AccountArray[0].timedcollect := true;
  AccountArray[0].synccontacts := false;
  AccountArray[0].synccalendar := false;
  AccountArray[0].proxytype := DEFAULTPROXY;

  AccountArray[1].emailaddress := 'test@foxmail.com';
  AccountArray[1].password := 'test';
  AccountArray[1].displayname := 'test(test)';
  AccountArray[1].sendname := 'test@foxmail.com';
  AccountArray[1].activatedstatus := ACTIVATED;
  AccountArray[1].timedcollect := true;
  AccountArray[1].synccontacts := true;
  AccountArray[1].synccalendar := false;
  AccountArray[1].proxytype := CUSTOMPROXY;

  CurrentAccount := AccountArray[0];
end;

procedure TAccountFrame.CMShowingChanged(var Mess: TMessage);
var
  i : integer;
begin
  inherited;

  if Showing then
  begin
    InitializeComboBox();
    InitializeAccounts();
    InitializeAccountListBox();
    FAccountListbox.ItemIndex := 0;
    FAccountListboxClick(FAccountListbox);
  end
  else
  begin
    FAccountListbox.Clear();
    FActivatedCombobox.Clear();
  end;
end;

procedure TAccountFrame.InitializeComboBox();
begin
  FActivatedCombobox.Items.Add('账号不活动');
  FActivatedCombobox.Items.Add('账号活动');
  FActivatedCombobox.ItemIndex := 0;
end;

procedure TAccountFrame.InitializeAccountListBox();
var
  i : integer;
begin
  for i := 0 to high(AccountArray) - low(AccountArray) do
  begin
    FAccountListbox.Items.Add(AccountArray[i].displayname);
  end;
end;

procedure TAccountFrame.FAccountListboxClick(Sender: TObject);
begin
  CurrentAccount := AccountArray[(Sender as TListBox).ItemIndex];
  UpdateInfoPanel();
end;

procedure TAccountFrame.UpdateInfoPanel();
begin
  FEmailAddressEdit.Text := CurrentAccount.emailaddress;
  FPassworkEdit.Text := CurrentAccount.password;
  FDisplayNameEdit.Text := CurrentAccount.displayname;
  FSendNameEdit.Text := CurrentAccount.sendname;
  FActivatedCombobox.ItemIndex := ord(CurrentAccount.activatedstatus);
  FTimerCheckbox.Checked := CurrentAccount.timedcollect;
  FSyncContactsCheckbox.Checked := CurrentAccount.synccontacts;
  FSyncCalendarCheckbox.Checked := CurrentAccount.synccalendar;
  EnableCheckboxs();
end;

procedure TAccountFrame.EnableCheckboxs();
begin
  // 设置checkbox的启用关系等
  if FActivatedCombobox.ItemIndex = 0 then
  begin
    FTimerCheckbox.Enabled := false;
    FSyncContactsCheckbox.Enabled := false;
    FSyncCalendarCheckbox.Enabled := false;
  end
  else
  begin
    FTimerCheckbox.Enabled := true;
    FSyncContactsCheckbox.Enabled := true;
    FSyncCalendarCheckbox.Enabled := true;
  end;
  if FTimerCheckbox.Checked and FTimerCheckbox.Enabled then
    FTimerCheckbox.Enabled := true
  else
    FTimerCheckbox.Enabled := false;
end;

procedure TAccountFrame.FTimerCheckboxClick(Sender: TObject);
begin
  FTimerCheckbox.Enabled := (Sender as TCheckbox).Checked;
end;

procedure TAccountFrame.FActivatedComboboxChange(Sender: TObject);
begin
  CurrentAccount.activatedstatus := TActivateStatus((Sender as TComboBox).ItemIndex);
  EnableCheckboxs();
end;

end.
