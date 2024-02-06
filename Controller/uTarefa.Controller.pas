unit uTarefa.Controller;

interface

uses uTarefa;

type
  TTarefaController = class
  private
    FTarefa: TTarefa;

  public
    constructor Create;
    property Tarefa: TTarefa read FTarefa write FTarefa;
    function Persistir: Boolean;
    function getID: string;
  end;

implementation

{ TTarefaController }

constructor TTarefaController.Create;
begin
  Tarefa := TTarefa.Create;
end;

function TTarefaController.getID: string;
begin
  Result := Tarefa.getID;
end;

function TTarefaController.Persistir: Boolean;
begin
  Result := Tarefa.Persistir;
end;

end.
