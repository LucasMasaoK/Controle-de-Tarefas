unit uCtlTarefa.DAO;

interface

uses uDM, uCtlTarefa;

type
  TCtlTarefaDAO = class
  private
    FConexao: TDM;

  public
    constructor Create;
    property Conexao: TDM read FConexao write FConexao;

  end;

implementation

uses
  Data.SqlExpr, System.SysUtils;

{ TCtlTarefaDAO }

constructor TCtlTarefaDAO.Create;
begin
  Conexao := TDM.Create;
end;


end.
