unit uCadUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadModelo, Vcl.StdCtrls, Vcl.ExtCtrls,
  uUsuario.Controller;

type
  TfrmCadUsuario = class(TfrmCad)
    editCodigo: TLabeledEdit;
    editNome: TLabeledEdit;
    editSenha: TLabeledEdit;
    editConfirmSenha: TLabeledEdit;
    comboDireito: TComboBox;
    Label1: TLabel;
    procedure btnSalvarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    FController: TUsuarioController;
    procedure verificaSenha;
    function retTipo(index: integer): String; overload;
    function retTipo(char: string): integer; overload;
    procedure salvar;
  public
    property Controller: TUsuarioController read FController write FController;
    destructor Destroy; override;
  end;

var
  frmCadUsuario: TfrmCadUsuario;

implementation

uses uAcao, uPesqCliente, System.StrUtils;
{$R *.dfm}
{ TfrmCadCliente }

procedure TfrmCadUsuario.btnEditarClick(Sender: TObject);
begin
  inherited;
  FController.Usuario.Acao := acEditar;
end;

procedure TfrmCadUsuario.btnExcluirClick(Sender: TObject);
begin
  inherited;
  FController.Usuario.Acao := acDeletar;
  self.salvar;

end;

procedure TfrmCadUsuario.btnNovoClick(Sender: TObject);
begin
  inherited;
  FController.Usuario.Acao := uAcao.acNovo;
  editCodigo.Text := FController.Usuario.getID;
  editNome.SetFocus;
end;

procedure TfrmCadUsuario.btnPesquisarClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmPesqCliente, frmPesqCliente);
  try
    frmPesqCliente.ShowModal;
    FController.Usuario.Acao := acEditar;
    with frmPesqCliente.usuarioController.Usuario do
    begin
      editCodigo.Text := IntToStr(Codigo);
      editNome.Text := Nome;
      editSenha.Text := Senha;
      comboDireito.ItemIndex := Self.retTipo(Direito);
    end;
  finally
    FreeAndNil(frmPesqCliente);
  end;
end;

procedure TfrmCadUsuario.btnSalvarClick(Sender: TObject);
begin
  inherited;
  self.salvar;
end;

destructor TfrmCadUsuario.Destroy;
begin
  FreeAndNil(FController);
  inherited;
end;

procedure TfrmCadUsuario.FormCreate(Sender: TObject);
begin
  inherited;
  FController := TUsuarioController.Create;
end;

function TfrmCadUsuario.retTipo(char: string): integer;
begin
  case AnsiIndexStr(FController.Usuario.Direito, ['O', 'S']) of
    0:
      begin
        Result := 0;
      end;
    1:
      begin
        Result := 1;
      end;
  end;
end;

function TfrmCadUsuario.retTipo(index: integer): String;
begin
  case comboDireito.ItemIndex of
    0:
      begin
        Result := 'O';
      end;
    1:
      begin
        Result := 'S';
      end;
  end;

end;

procedure TfrmCadUsuario.salvar;
begin
  if editNome.Text = EmptyStr then
  begin
    ShowMessage('Preenchimento obrigat�rio campo NOME');
    Exit;
  end;
  self.verificaSenha;
  with FController.Usuario do
  begin
    Codigo := StrToInt(editCodigo.Text);
    Nome := editNome.Text;
    Direito := self.retTipo(comboDireito.ItemIndex);
    Senha := editSenha.Text;

  end;
  if FController.Persistir then
    ShowMessage('Opera��o realizada com sucesso!')
  else
    ShowMessage('Erro ao realizar opera��o!');
end;

procedure TfrmCadUsuario.verificaSenha;
begin
  if editSenha.Text <> editConfirmSenha.Text then
  begin
    ShowMessage('Senhas devem ser iguais!');
    abort;
  end;

end;

end.
