unit NetworkFrameUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, ExtCtrls, AccountUnit;

type
  TNetworkFrame = class(TFrame)
    FNetworkGroupbox: TGroupBox;
    FDefaultProxyRadiobutton: TRadioButton;
    FNoProxyRadiobutton: TRadioButton;
    FIEProxyRadiobutton: TRadioButton;
    FCustomProxyRadiobutton: TRadioButton;
    FProxyServerSettingGroupbox: TGroupBox;
    FTypeLabel: TLabel;
    FServerLabel: TLabel;
    FPortLabel: TLabel;
    FUserIDLabel: TLabel;
    FPasswordLabel: TLabel;
    FServerEdit: TEdit;
    FUserIDEdit: TEdit;
    FPortEdit: TEdit;
    FPasswordEdit: TEdit;
    FAccountCombobox: TComboBox;
    FProxyTypeCombobox: TComboBox;
    procedure CMShowingChanged(var Mess: TMessage); message CM_SHOWINGCHANGED;
    procedure OnRadioButtonClicked(Sender : TObject);
    procedure FAccountComboboxChange(Sender: TObject);
  private
    { Private declarations }
    procedure InitializeAccountComboBox();
    procedure InitializeRadioButton();
    procedure EnableGroupBox(enable : Boolean);
  public
    { Public declarations }
    CurrentAccount : TAccount;
    AccountArray : TAccountArray;
  end;

implementation

{$R *.dfm}

procedure TNetworkFrame.CMShowingChanged(var Mess: TMessage);
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
    FAccountCombobox.Clear();
  end;
end;

procedure TNetworkFrame.InitializeAccountComboBox();
var
  i : integer;
begin
  for i := 0 to high(AccountArray) - low(AccountArray) do
  begin
    FAccountCombobox.Items.Add(AccountArray[i].emailaddress);
  end;

  FAccountCombobox.ItemIndex := 0;
  FAccountComboboxChange(FAccountCombobox);
end;

procedure TNetworkFrame.InitializeRadioButton();
var
  i : integer;
begin
  for i := 0 to FNetworkGroupbox.ControlCount - 1 do
  begin
    if FNetworkGroupbox.Controls[i] is TRadioButton then
      (FNetworkGroupbox.Controls[i] as TRadioButton).OnClick := OnRadioButtonClicked;
  end;
end;

procedure TNetworkFrame.OnRadioButtonClicked(Sender : TObject);
begin
 EnableGroupBox(Sender = FCustomProxyRadiobutton);
end;

procedure TNetworkFrame.FAccountComboboxChange(Sender: TObject);
var
  temp : TRadioButton;
begin
  case AccountArray[FAccountCombobox.ItemIndex].proxytype of
    DEFAULTPROXY : temp := FDefaultProxyRadiobutton;
    NOPROXY : temp := FNoProxyRadiobutton;
    IEPROXY : temp := FIEProxyRadiobutton;
    CUSTOMPROXY : temp := FCustomProxyRadiobutton;
  end;

  temp.Checked := true;
  OnRadioButtonClicked(temp);
end;

procedure TNetworkFrame.EnableGroupBox(enable : Boolean);
var
  i : integer;
begin
  FProxyServerSettingGroupbox.Enabled := false;
  for i :=0 to FProxyServerSettingGroupbox.ControlCount - 1 do
  begin
    FProxyServerSettingGroupbox.Controls[i].Enabled := enable;
  end;
end;

end.