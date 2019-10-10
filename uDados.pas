unit uDados;

interface

uses
  DBClient, DB;

type
  TDados = class
  private
    FCDSDados: TClientDataSet;
    FCampo1: TField;
    FCampo2: TField;
    FCampo3: TField;
    FCampo4: TField;
    FCampo5: TField;
    FCampo6: TField;
    FCampo7: TField;
    FCampo8: TField;
    FCampo9: TField;
    FCampo10: TField;
    FQtdRegistros: integer;
    procedure DefinirCampos;
  public
    constructor Create;
    destructor Destroy; override;
    procedure CarregarDadosPeloNome;
    procedure CarregarDadosPeloCampo;
    procedure Limpar;
    property QtdRegistros: integer read FQtdRegistros write FQtdRegistros;
  end;

implementation

{ TDados }

procedure TDados.Limpar;
begin
  FCDSDados.EmptyDataSet;
end;

constructor TDados.Create;
begin
  inherited Create;
  FQtdRegistros := 1000;
  FCDSDados := TClientDataSet.Create(nil);
  DefinirCampos;
end;

procedure TDados.DefinirCampos;
begin
  FCDSDados.FieldDefs.Clear;
  FCDSDados.FieldDefs.Add('Campo1', ftInteger);
  FCDSDados.FieldDefs.Add('Campo2', ftInteger);
  FCDSDados.FieldDefs.Add('Campo3', ftInteger);
  FCDSDados.FieldDefs.Add('Campo4', ftInteger);
  FCDSDados.FieldDefs.Add('Campo5', ftInteger);
  FCDSDados.FieldDefs.Add('Campo6', ftInteger);
  FCDSDados.FieldDefs.Add('Campo7', ftInteger);
  FCDSDados.FieldDefs.Add('Campo8', ftInteger);
  FCDSDados.FieldDefs.Add('Campo9', ftInteger);
  FCDSDados.FieldDefs.Add('Campo10', ftInteger);
  FCDSDados.CreateDataSet;

  FCampo1 := FCDSDados.FieldByName('Campo1');
  FCampo2 := FCDSDados.FieldByName('Campo2');
  FCampo3 := FCDSDados.FieldByName('Campo3');
  FCampo4 := FCDSDados.FieldByName('Campo4');
  FCampo5 := FCDSDados.FieldByName('Campo5');
  FCampo6 := FCDSDados.FieldByName('Campo6');
  FCampo7 := FCDSDados.FieldByName('Campo7');
  FCampo8 := FCDSDados.FieldByName('Campo8');
  FCampo9 := FCDSDados.FieldByName('Campo9');
  FCampo10 := FCDSDados.FieldByName('Campo10');
end;

destructor TDados.Destroy;
begin
  FCDSDados.Free;
  inherited;
end;

procedure TDados.CarregarDadosPeloCampo;
var
  i: integer;
begin
  for i := 1 to FQtdRegistros do
  begin
    FCDSDados.Append;
    FCampo1.AsInteger := i;
    FCampo2.AsInteger := i;
    FCampo3.AsInteger := i;
    FCampo4.AsInteger := i;
    FCampo5.AsInteger := i;
    FCampo6.AsInteger := i;
    FCampo7.AsInteger := i;
    FCampo8.AsInteger := i;
    FCampo9.AsInteger := i;
    FCampo10.AsInteger := i;
    FCDSDados.Post;
  end;
end;

procedure TDados.CarregarDadosPeloNome;
var
  i: integer;
begin
  for i := 1 to FQtdRegistros do
  begin
    FCDSDados.Append;
    FCDSDados.FieldByName('Campo1').AsInteger := i;
    FCDSDados.FieldByName('Campo2').AsInteger := i;
    FCDSDados.FieldByName('Campo3').AsInteger := i;
    FCDSDados.FieldByName('Campo4').AsInteger := i;
    FCDSDados.FieldByName('Campo5').AsInteger := i;
    FCDSDados.FieldByName('Campo6').AsInteger := i;
    FCDSDados.FieldByName('Campo7').AsInteger := i;
    FCDSDados.FieldByName('Campo8').AsInteger := i;
    FCDSDados.FieldByName('Campo9').AsInteger := i;
    FCDSDados.FieldByName('Campo10').AsInteger := i;
    FCDSDados.Post;
  end;
end;

end.

