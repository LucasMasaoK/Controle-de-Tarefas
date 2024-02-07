unit uCtlTarefa;

interface

uses
  uAcao;

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
  end;

implementation

{ TCtlTarefa }

function TCtlTarefa.Persistir: Boolean;
begin
  case Acao of
    acNovo:
      ;
    acEditar:
      ;
    acDeletar:
      ;
    acPequisar:
      ;
  end;
end;

end.
