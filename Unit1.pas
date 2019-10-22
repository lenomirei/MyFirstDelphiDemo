unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, AccountUnit, NetworkFrameUnit, AccountFrameUnit,
  RadioButton1, Button1, ComCtrls;

type
  TForm1 = class(TForm)
    Panel4: TPanel;
    FConfirmButton: TButton;
    FCancelButton: TButton;
    FApplyButton: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    procedure FormCreate(Sender: TObject);

    procedure FCancelButtonClick(Sender: TObject);
    procedure FConfirmButtonClick(Sender: TObject);
    procedure PageControl1Changing(Sender: TObject;
      var AllowChange: Boolean);
    procedure FApplyButtonClick(Sender: TObject);
  private
    { Private declarations }
    FAccountFrame : TAccountFrame;
    FNetworkFrame : TNetworkFrame;
    procedure InitializeFrames();
    procedure ApplyAccountInfo();
    procedure InitializeAccounts();
  public
    { Public declarations }
    CurrentAccount : integer;
    AccountArray : TAccountArray;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  Self.Caption := 'œµÕ≥…Ë÷√';
  InitializeFrames();
  InitializeAccounts();
end;

procedure TForm1.FCancelButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TForm1.FConfirmButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TForm1.InitializeFrames();
begin
  FAccountFrame := TAccountFrame.Create(Self);
  FAccountFrame.Left := 0;
  FAccountFrame.Top := 0;
  FAccountFrame.Height := 633;
  FAccountFrame.Width := 1377;
  FAccountFrame.Parent := TabSheet1;
  FNetworkFrame := TNetworkFrame.Create(Self);
  FNetworkFrame.Left := 0;
  FNetworkFrame.Top := 0;
  FNetworkFrame.Height := 633;
  FNetworkFrame.Width := 1377;
  FNetworkFrame.Parent := TabSheet2;
end;

procedure TForm1.PageControl1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
  FNetworkFrame.AccountArray := FAccountFrame.AccountArray;
  FNetworkFrame.CurrentAccount := @CurrentAccount;
  FNetworkFrame.InitializeAccountComboBox();
  FNetworkFrame.SetCurrentAccount();
end;

procedure TForm1.ApplyAccountInfo();
begin
  if PageControl1.ActivePageIndex = 1 then
    FAccountFrame.ApplyAccountInfo()
  else
    FNetworkFrame.ApplyAccountInfo();
end;

procedure TForm1.InitializeAccounts();
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

  CurrentAccount := 0;
  FAccountFrame.AccountArray := AccountArray;
  FAccountFrame.CurrentAccount := @CurrentAccount;
  FNetworkFrame.AccountArray := AccountArray;
  FNetworkFrame.CurrentAccount := @CurrentAccount;
end;

procedure TForm1.FApplyButtonClick(Sender: TObject);
begin
  if PageControl1.ActivePageIndex = 0 then
    FAccountFrame.ApplyAccountInfo()
  else
    FNetworkFrame.ApplyAccountInfo();
end;

end.
