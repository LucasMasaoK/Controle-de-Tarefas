unit uCtlTarefa.Controller;

interface

uses
  uCtlTarefa, Datasnap.DBClient;

type
  TCtlTarefaController = class
  private
    FTarefaModel: TCtlTarefa;

  public
    constructor Create;
    property CtlTarefa: TCtlTarefa read FTarefaModel write FTarefaModel;
    Function Persistir: Boolean;
    function Pesquisar: TClientDataSet;
  end;

implementation

{ TCtlTarefaController }

constructor TCtlTarefaController.Create;
begin
  CtlTarefa := TCtlTarefa.Create;
end;

function TCtlTarefaController.Persistir: Boolean;
begin
  Result := CtlTarefa.Persistir;
end;

function TCtlTarefaController.Pesquisar: TClientDataSet;
begin
  Result := CtlTarefa.Pesquisar;
end;

end.
