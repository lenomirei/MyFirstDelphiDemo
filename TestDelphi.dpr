program TestDelphi;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  AccountUnit in 'AccountUnit.pas',
  NetworkFrameUnit in 'NetworkFrameUnit.pas' {NetworkFrame: TFrame},
  AccountFrameUnit in 'AccountFrameUnit.pas' {AccountFrame: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
