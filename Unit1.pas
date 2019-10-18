unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, AccountUnit, NetworkFrame, AccountFrame,
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

    procedure InitializeFrames();
  public
    { Public declarations }
    account_frame_ : TFrame3;
    network_frame_ : TFrame2;

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  Self.Caption := '系统设置';

  // 将radiobutton和frame对应起来会比较好
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
  account_frame_ := TFrame3.Create(Self);
  account_frame_.Left := 0;
  account_frame_.Top := 0;
  account_frame_.Height := 633;
  account_frame_.Width := 1377;
  account_frame_.Parent := TabSheet1;
  network_frame_ := TFrame2.Create(Self);
  network_frame_.Left := 0;
  network_frame_.Top := 0;
  network_frame_.Height := 633;
  network_frame_.Width := 1377;
  network_frame_.Parent := TabSheet2;
end;

procedure TForm1.PageControl1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
  network_frame_.account_array_ := account_frame_.account_array_;
end;

end.
