unit uUsuario.Controller;

interface

uses uUsuario, Datasnap.DBClient;

type
  TUsuarioController = class
  private
    FUsuario: TUsuario;

  public
    property Usuario: TUsuario read FUsuario write FUsuario;
    function Persistir: Boolean;
    constructor Create;
    destructor Destroy; override;
    function getID: string;
    function Pesquisar : TClientDataSet;
  end;

implementation

uses
  System.SysUtils;

constructor TUsuarioController.Create;
begin
  FUsuario := TUsuario.Create;
end;

destructor TUsuarioController.Destroy;
begin
  FreeAndNil(FUsuario);
  inherited;
end;

function TUsuarioController.getID: string;
begin
  Result := FUsuario.getID;
end;

function TUsuarioController.Persistir: Boolean;
begin
  Result := FUsuario.Persistir;
end;

function TUsuarioController.Pesquisar: TClientDataSet;
begin
  Result:= FUsuario.Pesquisar;
end;

end.
