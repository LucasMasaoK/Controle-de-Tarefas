unit uUsuario;

interface

uses uAcao, Datasnap.DBClient;

type
  TUsuario = class
  private
    FCodigo: integer;
    FNome: string;
    FDireito: string;
    FSenha: string;
    FAcao: TAcao;

  public
    property Codigo: integer read FCodigo write FCodigo;
    property Nome: string read FNome write FNome;
    property Direito: string read FDireito write FDireito;
    property Senha: string read FSenha write FSenha;
    property Acao: TAcao read FAcao write FAcao;
    function Persistir: Boolean;
    function getID: string;
    function Pesquisar: TClientDataSet;
  end;

implementation

uses
  uUsuario.DAO, System.SysUtils;
{ TUsuario }

function TUsuario.getID: string;
var
  usuarioDAO: TUsuarioDAO;
begin
  usuarioDAO := TUsuarioDAO.Create;
  try
    Result := usuarioDAO.getID;
  finally
    FreeAndNil(usuarioDAO);
  end;

end;

function TUsuario.Persistir: Boolean;
var
  usuarioDAO: TUsuarioDAO;
begin
  usuarioDAO := TUsuarioDAO.Create;
  try
    case Acao of
      acNovo:
        Result := usuarioDAO.Novo(Self);
      acEditar:
        Result := usuarioDAO.Editar(Self);
      acDeletar:
        Result := usuarioDAO.Excluir(Self);
    end;
  finally
    FreeAndNil(usuarioDAO);
  end;

end;

function TUsuario.Pesquisar: TClientDataSet;
var
  usuarioDAO: TUsuarioDAO;
begin
  usuarioDAO := TUsuarioDAO.Create;
  try
    Result := usuarioDAO.Pesquisar(Nome);
  finally
    FreeAndNil(usuarioDAO);
  end;
end;

end.
