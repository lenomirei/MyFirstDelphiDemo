program TestDelphi;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  AccountUnit in 'AccountUnit.pas',
  NetworkFrame in 'NetworkFrame.pas' {Frame2: TFrame},
  AccountFrame in 'AccountFrame.pas' {Frame3: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
