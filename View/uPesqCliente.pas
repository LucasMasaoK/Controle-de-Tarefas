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
    procedure btnEditarClick(Sender: TObject);
    procedure gridPesquisaDblClick(Sender: TObject);
  private
    FusuarioController: TUsuarioController;
    procedure Pesquisar;
    procedure Editar;
  public
    property usuarioController: TUsuarioController read FusuarioController
      write FusuarioController;
  end;

var
  frmPesqCliente: TfrmPesqCliente;

implementation

uses
  uAcao, uCadUsuario;
{$R *.dfm}
{ TfrmPesqCliente }

procedure TfrmPesqCliente.btnEditarClick(Sender: TObject);
begin
  inherited;
  Self.Editar;
end;

procedure TfrmPesqCliente.btnPesquisarClick(Sender: TObject);
begin
  inherited;
  Self.Pesquisar;
end;

procedure TfrmPesqCliente.Editar;
begin
  with frmCadUsuario, cdsPesquisa do
  begin
    editCodigo.Text := FieldByName('CODIGO').AsString;
    editNome.Text := FieldByName('NOME').AsString;
    if FieldByName('DIREITO').AsString = 'O' then
      comboDireito.ItemIndex := 0
    else
      comboDireito.ItemIndex := 1;
    editSenha.Text := FieldByName('SENHA').AsString;

  end;
  Close;
end;

procedure TfrmPesqCliente.gridPesquisaDblClick(Sender: TObject);
begin
  inherited;
  Self.Editar;
end;

procedure TfrmPesqCliente.Pesquisar;
begin
  FusuarioController := TUsuarioController.Create;
  try
    FusuarioController.Usuario.Acao := uAcao.acPequisar;
    FusuarioController.Usuario.Nome := editPesquisa.Text;
    cdsPesquisa := FusuarioController.Pesquisar;
    dsPesquisa.DataSet := cdsPesquisa;
  finally
    FreeAndNil(FusuarioController);
  end;
end;

end.
