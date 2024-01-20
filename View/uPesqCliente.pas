unit uPesqCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPesqModelo, Data.DB, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient, uUsuario.Controller;

type
  TfrmPesqCliente = class(TfrmPesq)
    procedure btnPesquisarClick(Sender: TObject);
  private
    FusuarioController: TUsuarioController;
    procedure Pesquisar;
  public
    property usuarioController: TUsuarioController read FusuarioController
      write FusuarioController;
  end;

var
  frmPesqCliente: TfrmPesqCliente;

implementation

uses
  uAcao;
{$R *.dfm}
{ TfrmPesqCliente }

procedure TfrmPesqCliente.btnPesquisarClick(Sender: TObject);
begin
  inherited;
  Self.Pesquisar;
end;

procedure TfrmPesqCliente.Pesquisar;
begin
  FusuarioController := TUsuarioController.Create;
  try
    FusuarioController.Usuario.Acao := uAcao.acPequisar;
    FusuarioController.Usuario.Nome := editPesquisa.Text;
    cdsPesquisa:= FusuarioController.Pesquisar;
    dsPesquisa.DataSet:= cdsPesquisa;
  finally
    FreeAndNil(FusuarioController);
  end;
end;

end.
