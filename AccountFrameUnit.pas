unit AccountFrameUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, ExtCtrls, AccountUnit, RadioButton1, ComCtrls;

type
  PInteger = ^integer;
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
    procedure InitializeAccountListBox();
    procedure UpdateInfoPanel();
    procedure EnableCheckboxs();

  public
    { Public declarations }
    AccountArray : TAccountArray;
    CurrentAccount : PInteger;
    procedure ApplyAccountInfo();
    constructor Create(AOwner:TComponent);overload;

  end;

implementation

{$R *.dfm}

procedure TAccountFrame.CMShowingChanged(var Mess: TMessage);
var
  i : integer;
begin
  inherited;

  if Showing then
  begin
    InitializeComboBox();
    InitializeAccountListBox();
    FAccountListbox.ItemIndex := 0;
    CurrentAccount := FAccountListbox.ItemIndex;
    UpdateInfoPanel();
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
  CurrentAccount := (Sender as TListBox).ItemIndex;
  UpdateInfoPanel();
end;

procedure TAccountFrame.UpdateInfoPanel();
begin
  FEmailAddressEdit.Text := AccountArray[CurrentAccount].emailaddress;
  FPassworkEdit.Text := AccountArray[CurrentAccount].password;
  FDisplayNameEdit.Text := AccountArray[CurrentAccount].displayname;
  FSendNameEdit.Text := AccountArray[CurrentAccount].sendname;
  FActivatedCombobox.ItemIndex := ord(AccountArray[CurrentAccount].activatedstatus);
  FTimerCheckbox.Checked := AccountArray[CurrentAccount].timedcollect;
  FSyncContactsCheckbox.Checked := AccountArray[CurrentAccount].synccontacts;
  FSyncCalendarCheckbox.Checked := AccountArray[CurrentAccount].synccalendar;
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
    FTimerCombobox.Enabled := true
  else
    FTimerCombobox.Enabled := false;
end;

procedure TAccountFrame.FTimerCheckboxClick(Sender: TObject);
begin
  FTimerCombobox.Enabled := (Sender as TCheckbox).Checked;
end;

procedure TAccountFrame.FActivatedComboboxChange(Sender: TObject);
begin
  EnableCheckboxs();
end;

procedure TAccountFrame.ApplyAccountInfo();
begin
  AccountArray[CurrentAccount].activatedstatus := TActivateStatus(FActivatedCombobox.ItemIndex);
end;

constructor TAccountFrame.Create(AOwner:TComponent);
begin
  inherited Create(AOwner);
end; 

end.
