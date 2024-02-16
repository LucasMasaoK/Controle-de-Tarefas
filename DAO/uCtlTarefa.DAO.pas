unit uCtlTarefa.DAO;

interface

uses uDM, uCtlTarefa, Datasnap.DBClient;

type
  TCtlTarefaDAO = class
  private
    FConexao: TDM;

  public
    constructor Create;
    property Conexao: TDM read FConexao write FConexao;
    function Pesquisa(oCtlTarefa: TCtlTarefa): TClientDataSet;
    function Novo(oCtlTarefa: TCtlTarefa): Boolean;
    function LimparTarefa(oCtlTarefa: TCtlTarefa): Boolean;
  end;

implementation

uses
  Data.SqlExpr, System.SysUtils, Datasnap.Provider;

{ TCtlTarefaDAO }

constructor TCtlTarefaDAO.Create;
begin
  Conexao := TDM.Create;
end;

function TCtlTarefaDAO.LimparTarefa(oCtlTarefa: TCtlTarefa): Boolean;
var
  sqlLimpar: TSQLQuery;
begin
  sqlLimpar := TSQLQuery.Create(nil);
  sqlLimpar := Conexao.getConexao(sqlLimpar);
  sqlLimpar.CommandText := 'DELETE FROM USUARIO_TAREFA WHERE' +
    IntToStr(oCtlTarefa.Usuario);
  try
    sqlLimpar.ExecSQL();
    Result := True;
  except
    on E: Exception do
    begin
      raise Exception.Create('Error Message' + E.Message);
      Result := False;
    end;

  end;

end;

function TCtlTarefaDAO.Novo(oCtlTarefa: TCtlTarefa): Boolean;
var
  sqlNovo: TSQLQuery;
begin
  sqlNovo := TSQLQuery.Create(nil);
  try
    sqlNovo := Conexao.getConexao(sqlNovo);
    sqlNovo.CommandText :=
      ' insert into USUARIO_TAREFA (COD_USUARIO, COD_TAREFA)' + 'values ( ' +
      IntToStr(oCtlTarefa.Usuario) + ', ' + IntToStr(oCtlTarefa.Tarefa) + ' )';
    try
      sqlNovo.ExecSQL();
      Result := True;
    except
      Result := False;

    end;
  finally
    FreeAndNil(sqlNovo);
  end;
end;

function TCtlTarefaDAO.Pesquisa(oCtlTarefa: TCtlTarefa): TClientDataSet;
var
  sqlPesquisa: TSQLQuery;
  dspPesquisa: TDataSetProvider;
  cdsPesquisa: TClientDataSet;
begin
  sqlPesquisa := TSQLQuery.Create(nil);
  dspPesquisa := TDataSetProvider.Create(nil);
  cdsPesquisa := TClientDataSet.Create(nil);

  try

    sqlPesquisa := Conexao.getConexao(sqlPesquisa);
    sqlPesquisa.CommandText := 'SELECT * FROM VW_TAREFA_USUARIO ' +
      'WHERE  COD_USUARIO= ' + IntToStr(oCtlTarefa.Usuario);
    dspPesquisa.DataSet := sqlPesquisa;
    cdsPesquisa.SetProvider(dspPesquisa);
    try
      cdsPesquisa.Open;
      Result := cdsPesquisa;
    except
      on E: Exception do
      begin
        raise Exception.Create('Error Message' + E.Message);
      end;

    end;

  finally
    FreeAndNil(dspPesquisa);
    FreeAndNil(sqlPesquisa);
  end;
end;

end.
