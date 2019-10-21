unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, AccountUnit, NetworkFrameUnit, AccountFrameUnit,
  RadioButton1, Button1, ComCtrls;

type
  TForm1 = class(TForm)
    Panel4: TPanel;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    procedure FormCreate(Sender: TObject);

    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure PageControl1Changing(Sender: TObject;
      var AllowChange: Boolean);
  private
    { Private declarations }
    FAccountFrame : TAccountFrame;
    FNetworkFrame : TNetworkFrame;
    procedure InitializeFrames();
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  Self.Caption := 'œµÕ≥…Ë÷√';
  InitializeFrames();
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.Button4Click(Sender: TObject);
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
end;

end.
