unit uDM;

interface

uses
  Data.FMTBcd, SimpleDS, Data.DB,
  Data.SqlExpr, Datasnap.DBClient,DBXDynalink, Data.DBXFirebird;

type
  TDM = class
  private
    FDMConexao: TSQLConnection;
    procedure configuracao;

  public
    property DMConexao: TSQLConnection read FDMConexao write FDMConexao;
    function getID(tabela: string): string;
    function getConexao(sqlQuery: TSQLQuery): TSQLQuery; overload;
    function getConexao(sqlQuery: TSimpleDataSet): TSimpleDataSet; overload;
    constructor Create;
    destructor Destroy; override;

  end;

implementation

uses
  System.SysUtils;

{ TDM }

procedure TDM.configuracao;
begin
  with DMConexao do
  begin
    ConnectionName := 'FBConnection';
    DriverName:='Firebird';
    GetDriverFunc := 'getSQLDriverINTERBASE';
    LibraryName := 'dbxfb.dll';
    KeepConnection := True;
    LoginPrompt := False;
    with Params do
    begin
      Add('Database=C:\Users\Delphi 10\Documents\Embarcadero\Studio\Projects\Controle de Tarefas\Banco\CONTROLE_TAREFAS.FDB');
      Add('User_name=SYSDBA');
      Add('Password=masterkey');
    end;
    Connected := True;
  end;
end;

constructor TDM.Create;
begin
  DMConexao := TSQLConnection.Create(nil);
  Self.configuracao;
end;

destructor TDM.Destroy;
begin

  inherited;
end;

function TDM.getConexao(sqlQuery: TSimpleDataSet): TSimpleDataSet;
begin
  sqlQuery.Connection := DMConexao;
  Result := sqlQuery;
end;

function TDM.getID(tabela: string): string;
var
  sqlAux: TSQLQuery;
begin
  sqlAux := TSQLQuery.Create(Nil);
  try
    sqlAux.SQLConnection := DMConexao;
    sqlAux.CommandText :=
      'SELECT COALESCE(MAX(CODIGO),0)+1 CODIGO FROM ' + tabela;
    sqlAux.Open;
    Result := sqlAux.FieldByName('CODIGO').AsString;
  finally
    FreeAndNil(sqlAux);
  end;

end;

function TDM.getConexao(sqlQuery: TSQLQuery): TSQLQuery;
begin
  sqlQuery.SQLConnection := DMConexao;
  Result := sqlQuery;
end;

end.
