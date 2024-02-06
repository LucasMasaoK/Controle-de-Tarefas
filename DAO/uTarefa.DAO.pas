unit uTarefa.DAO;

interface

uses
  uTarefa, uDM;

type
  TTarefaDAO = class
  private
    FConexao: TDM;

  public

    constructor Create;
    property Conexao: TDM read FConexao write FConexao;
    function Novo(oTarefa: TTarefa): Boolean;
    function Editar(oTarefa: TTarefa): Boolean;
    function Excluir(oTarefa: TTarefa): Boolean;
    function getID: string;
  end;

implementation

uses
  Datasnap.DBClient, Data.SqlExpr, System.SysUtils;
{ TTarefaDAO }

constructor TTarefaDAO.Create;
begin
  FConexao := TDM.Create;
end;

function TTarefaDAO.Editar(oTarefa: TTarefa): Boolean;
begin

end;

function TTarefaDAO.Excluir(oTarefa: TTarefa): Boolean;
begin

end;

function TTarefaDAO.getID: string;
begin
  Result := Conexao.getID('TAREFA');
end;

function TTarefaDAO.Novo(oTarefa: TTarefa): Boolean;
var
  sqlNovo: TSQLQuery;
begin
  sqlNovo := TSQLQuery.Create(nil);
  try
    with sqlNovo do
    begin
      sqlNovo := FConexao.getConexao(sqlNovo);
      CommandText := ' insert into TAREFA (CODIGO, NOME, TIPO)' + 'values (' +
        IntToStr(oTarefa.Codigo) + ',' + QuotedStr(oTarefa.Nome) +
        ',' + QuotedStr(oTarefa.Tipo) + ')';
      try
        ExecSQL();
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

end.