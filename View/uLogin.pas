unit uLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  uUsuario;

type
  TfrmLogin = class(TForm)
    Panel1: TPanel;
    editCodigo: TLabeledEdit;
    editNome: TLabeledEdit;
    editSenha: TLabeledEdit;
    btnSair: TButton;
    btnEntrar: TButton;
    btnPesquisar: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    function verificaSenha(senha: string): Boolean;
    procedure btnEntrarClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
  private
    FUsuario: TUsuario;
    { Private declarations }
  public
    property Usuario: TUsuario read FUsuario write FUsuario;
  end;

var
  frmLogin: TfrmLogin;

implementation

uses uPesqCliente, uPrincipal;
{$R *.dfm}

procedure TfrmLogin.btnEntrarClick(Sender: TObject);
begin
  if Self.verificaSenha(editSenha.Text) then
  begin
    Application.CreateForm(TfrmPrincipal, frmPrincipal);
    try
      frmLogin.Visible:=False;
      frmPrincipal.ShowModal;

    finally
      FreeAndNil(frmPrincipal);
    end;
  end
  else
  begin
    ShowMessage('Senha incorreta!');
  end;
end;

procedure TfrmLogin.btnSairClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmLogin.FormCreate(Sender: TObject);
begin
  Usuario := TUsuario.Create;
end;

procedure TfrmLogin.btnPesquisarClick(Sender: TObject);
begin
  Application.CreateForm(TfrmPesqCliente, frmPesqCliente);
  try
    frmPesqCliente.ShowModal;
    Usuario := frmPesqCliente.usuarioController.Usuario;
    editCodigo.Text := IntToStr(Usuario.Codigo);
    editNome.Text := Usuario.Nome;
  finally
    FreeAndNil(frmPesqCliente);
  end;
end;

function TfrmLogin.verificaSenha(senha: string): Boolean;
begin
  if senha = Usuario.senha then
    Result := True
  else
    Result := False;
end;

end.
