unit uMain;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBClient, StdCtrls, Spin;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    SpinEdit1: TSpinEdit;
    GroupBox1: TGroupBox;
    lblLoadByName: TLabel;
    lblLoadByField: TLabel;
    lblPerformance: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  uDados;

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
var
  Dados: TDados;
  TickCountName, TickCountField: DWORD;
  Performance: real;
begin
  Dados := TDados.Create;
  try
    Dados.QtdRegistros := SpinEdit1.Value;

    Dados.Limpar;
    TickCountName := GetTickCount;
    Dados.CarregarDadosPeloNome;
    TickCountName := GetTickCount - TickCountName;
    lblLoadByName.Caption := Format('Por nome: %d ms', [TickCountName]);

    Dados.Limpar;
    TickCountField := GetTickCount;
    Dados.CarregarDadosPeloCampo;
    TickCountField := GetTickCount - TickCountField;
    lblLoadByField.Caption := Format('Pelo campo: %d ms', [TickCountField]);

    if TickCountField = 0 then
      TickCountField := 1;

    Performance := (TickCountName / TickCountField) * 100;
    lblPerformance.Caption := Format('Performance: %2.2f%%', [Performance]);
  finally
    Dados.Free;
  end;
end;

end.

