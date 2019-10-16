unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, AccountUnit, NetworkFrame, AccountFrame;

type
  TForm1 = class(TForm)
    Panel4: TPanel;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Panel1: TPanel;
    account_radio_button_: TRadioButton;
    network_radio_button_: TRadioButton;
    procedure FormCreate(Sender: TObject);
    procedure RadioButtonClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
    procedure RadioGroupInitialize();
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
  RadioGroupInitialize();
  // 将radiobutton和frame对应起来会比较好
  InitializeFrames();
  RadioButtonClick(account_radio_button_);
end;

procedure TForm1.RadioButtonClick(Sender: TObject);
begin
  // Switch Frame here
  if(Sender = account_radio_button_) then
  begin
    account_frame_.Show();
    network_frame_.Hide();
  end
  else
  begin
    account_frame_.Hide();
    network_frame_.current_account_ := account_frame_.current_account_;
    network_frame_.account_array_ := account_frame_.account_array_;
    network_frame_.Show();
  end;
end;

procedure TForm1.RadioGroupInitialize();
var
  i : integer;
begin
  for i:=0 to Panel1.ControlCount-1 do
    begin
      if Panel1.Controls[i] is TRadioButton then
        ((Panel1.Controls[i]) as TRadioButton).OnClick := RadioButtonClick;
    end;
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
  account_frame_.Top := 80;
  account_frame_.Height := 633;
  account_frame_.Width := 1377;
  account_frame_.Parent := Form1;
  network_frame_ := TFrame2.Create(Self);
  network_frame_.Left := 0;
  network_frame_.Top := 80;
  network_frame_.Height := 633;
  network_frame_.Width := 1377;
  network_frame_.Parent := Form1;
end;


end.
