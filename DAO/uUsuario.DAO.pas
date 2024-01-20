unit uUsuario.DAO;

interface

uses uDM, uUsuario, Datasnap.DBClient;

type
  TUsuarioDAO = class
  private
    FConexao: TDM;

  public
    property Conexao: TDM read FConexao write FConexao;
    constructor Create;
    destructor Destroy; override;
    function getID: string;
    function Novo(oUsuario: TUsuario): Boolean;
    function Pesquisar(Nome: string): TClientDataSet;
  published

  end;

implementation

uses
  System.SysUtils, Data.FMTBcd, SimpleDS, Data.DB,
  Data.SqlExpr, DBXDynalink, Data.DBXFirebird,
  Datasnap.Provider;

{ TClienteDAO }

constructor TUsuarioDAO.Create;
begin
  FConexao := TDM.Create;
end;

destructor TUsuarioDAO.Destroy;
begin
  FreeAndNil(FConexao);
  inherited;
end;

function TUsuarioDAO.getID: string;
begin
  Result := FConexao.getID('USUARIO');
end;

function TUsuarioDAO.Novo(oUsuario: TUsuario): Boolean;
var
  sqlNovo: TSQLQuery;
begin
  sqlNovo := TSQLQuery.Create(Nil);
  try
    with sqlNovo, oUsuario do
    begin
      sqlNovo := FConexao.getConexao(sqlNovo);
      CommandText := 'insert into USUARIO values (' + QuotedStr(IntToStr(Codigo)
        ) + ', ' + QuotedStr(Nome) + ', ' + QuotedStr(DIREITO) + ', ' +
        QuotedStr(SENHA) + ')';
      try
        ExecSQL;
        Result := True;
      except
        on E: Exception do
        begin
          raise Exception.Create('Error Message' + E.Message);
          Result := False;
        end;
      end;

    end;
  finally
    FreeAndNil(sqlNovo);
  end;
end;

function TUsuarioDAO.Pesquisar(Nome: string): TClientDataSet;
var
  sqlPesquisar: TSQLQuery;
  dspPesquisar: TDataSetProvider;
  cdsPesquisar: TClientDataSet;
begin
  sqlPesquisar := TSQLQuery.Create(Nil);
  dspPesquisar := TDataSetProvider.Create(Nil);;
  cdsPesquisar := TClientDataSet.Create(Nil);;
  try
    sqlPesquisar := FConexao.getConexao(sqlPesquisar);
    sqlPesquisar.CommandText := 'SELECT * FROM USUARIO WHERE NOME LIKE' +
      QuotedStr(Nome + '%s');
    dspPesquisar.DataSet := sqlPesquisar;
    cdsPesquisar.SetProvider(dspPesquisar);
    cdsPesquisar.Open;
    cdsPesquisar.RecordCount;
    Result := cdsPesquisar;
  finally
    FreeAndNil(dspPesquisar);
    FreeAndNil(sqlPesquisar);
  end;
end;

end.
