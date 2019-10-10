program DBFields;

uses
  Forms,
  uMain in 'uMain.pas' {Form1},
  uDados in 'uDados.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
