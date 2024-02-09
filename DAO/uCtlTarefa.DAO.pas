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
  end;

implementation

uses
  Data.SqlExpr, System.SysUtils, Datasnap.Provider;

{ TCtlTarefaDAO }

constructor TCtlTarefaDAO.Create;
begin
  Conexao := TDM.Create;
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
    sqlPesquisa.CommandText :=
      'SELECT usuario.nome Nome,TAREFA.nome Tarefa  FROM usuario_tarefa ' +
      'JOIN usuario ON usuario.codigo=COD_USUARIO ' +
      'JOIN TAREFA ON TAREFA.codigo=COD_TAREFA ' + 'WHERE  COD_USUARIO= ' +
      IntToStr(oCtlTarefa.Usuario);
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
