unit uCtlTarefa;

interface

uses
  uAcao, Datasnap.DBClient;

type
  TCtlTarefa = class
  private
    FUsuario: integer;
    FTarefa: integer;
    FAcao: TAcao;

  public
    property Usuario: integer read FUsuario write FUsuario;
    property Tarefa: integer read FTarefa write FTarefa;
    property Acao: TAcao read FAcao write FAcao;
    function Persistir: Boolean;
    function Pesquisar: TClientDataSet;
  end;

implementation

uses
  uCtlTarefa.DAO, System.SysUtils;
{ TCtlTarefa }

function TCtlTarefa.Persistir: Boolean;
var
  CtlTarefaDAO: TCtlTarefaDAO;
begin
  CtlTarefaDAO := TCtlTarefaDAO.Create;
  try
    case Acao of
      acNovo:
        Result := CtlTarefaDAO.Novo(Self);

      acEditar:
        ;
      acDeletar: Result:=CtlTarefaDAO.LimparTarefa(Self);

    end;
  finally
    freeAndNil(CtlTarefaDAO);
  end;

end;

function TCtlTarefa.Pesquisar: TClientDataSet;
var
  CtlTarefaDAO: TCtlTarefaDAO;
begin
  CtlTarefaDAO := TCtlTarefaDAO.Create;
  try
    Result := CtlTarefaDAO.Pesquisa(Self);
  finally
    freeAndNil(CtlTarefaDAO);
  end;
end;

end.
