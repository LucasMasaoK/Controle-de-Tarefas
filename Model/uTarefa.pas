unit uTarefa;

interface

uses
  uAcao, Datasnap.DBClient;

type
  TTarefa = class
  private
    FCodigo: integer;
    FNome: string;
    FTipo: string;
    FAcao: TAcao;

  public
    property Codigo: integer read FCodigo write FCodigo;
    property Nome: string read FNome write FNome;
    property Tipo: string read FTipo write FTipo;
    property Acao: TAcao read FAcao write FAcao;
    function Persistir: Boolean;
    function getID: string;
    function Pesquisar: TClientDataSet;
  end;

implementation

uses uTarefa.DAO, System.SysUtils;
{ Tarefa }

function TTarefa.getID: string;
var
  oTarefaDAO: TTarefaDAO;
begin
  oTarefaDAO := TTarefaDAO.Create;
  try
    Result := oTarefaDAO.getID;
  finally
    FreeAndNil(oTarefaDAO);
  end;

end;

function TTarefa.Persistir: Boolean;
var
  oTarefaDAO: TTarefaDAO;
begin
  oTarefaDAO := TTarefaDAO.Create;
  try
    case Acao of
      acNovo:
        Result := oTarefaDAO.Novo(Self);
      acEditar:
        ;
      acDeletar:
        ;
      acPequisar:
        ;
    end;
  finally
    FreeAndNil(oTarefaDAO);
  end;

end;

function TTarefa.Pesquisar: TClientDataSet;
var
  oTarefaDAO: TTarefaDAO;
begin
  oTarefaDAO := TTarefaDAO.Create;
  try
    Result := oTarefaDAO.Pesquisar(Self.Nome);
  finally
    FreeAndNil(oTarefaDAO);
  end;
end;

end.
