unit NetworkFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, ExtCtrls, AccountUnit;

type
  TFrame2 = class(TFrame)
    GroupBox1: TGroupBox;
    default_proxy_radiobutton_: TRadioButton;
    no_proxy_radiobutton_: TRadioButton;
    ie_proxy_radiobutton_: TRadioButton;
    custom_proxy_radiobutton_: TRadioButton;
    GroupBox2: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    account_combobox_: TComboBox;
    proxy_type_combobox_: TComboBox;
    procedure CMShowingChanged(var Mess: TMessage); message CM_SHOWINGCHANGED;
    procedure OnRadioButtonClicked(Sender : TObject);
    procedure account_combobox_Change(Sender: TObject);
  private
    { Private declarations }
    procedure InitializeAccountComboBox();
    procedure InitializeRadioButton();
    procedure EnableGroupBox(enable : Boolean);
  public
    { Public declarations }
    current_account_ : TAccount;
    account_array_ : AccountArray;
  end;

implementation

{$R *.dfm}

procedure TFrame2.CMShowingChanged(var Mess: TMessage);
var
  i : integer;
begin
  inherited;

  if Showing then
  begin
    InitializeAccountComboBox();
    InitializeRadioButton();
  end
  else
  begin
    account_combobox_.Clear();
  end;
end;

procedure TFrame2.InitializeAccountComboBox();
var
  i : integer;
begin
  for i := 0 to high(account_array_) - low(account_array_) do
  begin
    account_combobox_.Items.Add(account_array_[i].emailaddress);
  end;

  account_combobox_.ItemIndex := 0;
  account_combobox_Change(account_combobox_);
end;

procedure TFrame2.InitializeRadioButton();
var
  i : integer;
begin
  for i := 0 to GroupBox1.ControlCount - 1 do
  begin
    if GroupBox1.Controls[i] is TRadioButton then
      (GroupBox1.Controls[i] as TRadioButton).OnClick := OnRadioButtonClicked;
  end;
end;

procedure TFrame2.OnRadioButtonClicked(Sender : TObject);
begin
 EnableGroupBox(Sender = custom_proxy_radiobutton_);
end;

procedure TFrame2.account_combobox_Change(Sender: TObject);
var
  temp : TRadioButton;
begin
  case account_array_[account_combobox_.ItemIndex].proxytype of
    DEFAULTPROXY : temp := default_proxy_radiobutton_;
    NOPROXY : temp := no_proxy_radiobutton_;
    IEPROXY : temp := ie_proxy_radiobutton_;
    CUSTOMPROXY : temp := custom_proxy_radiobutton_;
  end;

  temp.Checked := true;
  OnRadioButtonClicked(temp);
end;

procedure TFrame2.EnableGroupBox(enable : Boolean);
var
  i : integer;
begin
  GroupBox2.Enabled := false;
  for i :=0 to GroupBox2.ControlCount - 1 do
  begin
    GroupBox2.Controls[i].Enabled := enable;
  end;
end;

end.
