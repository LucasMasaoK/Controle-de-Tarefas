unit uUsuario.DAO;

interface

uses uDM, uUsuario;

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
  published

  end;

implementation

uses
  System.SysUtils, Data.SqlExpr;

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
      CommandText := 'insert into USUARIO values (' + QuotedStr(IntToStr(Codigo)) + ', ' +
        QuotedStr(Nome) + ', ' + QuotedStr(DIREITO) + ', ' + QuotedStr(SENHA) + ')';
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

end.
