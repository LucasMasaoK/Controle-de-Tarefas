unit uCadCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadModelo, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmCadCliente = class(TfrmCad)
    editCodigo: TLabeledEdit;
    editNome: TLabeledEdit;
    editSenha: TLabeledEdit;
    editConfirmSenha: TLabeledEdit;
    comboDireito: TComboBox;
    Label1: TLabel;
    procedure btnSalvarClick(Sender: TObject);
  private
    procedure verificaSenha;
    function retTipo(index :integer):String;
    procedure salvar;
  public
    { Public declarations }
  end;

var
  frmCadCliente: TfrmCadCliente;

implementation

{$R *.dfm}

{ TfrmCadCliente }

procedure TfrmCadCliente.btnSalvarClick(Sender: TObject);
begin
  inherited;
  Self.Salvar;
end;

function TfrmCadCliente.retTipo(index: integer): String;
begin
  case comboDireito.ItemIndex of
    0:
    begin
    Result:='O';
    end;
    1:
    begin
    Result:='S';
    end;
  end;

end;

procedure TfrmCadCliente.salvar;
begin
  if editNome.Text = EmptyStr then
  ShowMessage('Preenchimento obrigat�rio campo NOME');
  Self.verificaSenha;
end;

procedure TfrmCadCliente.verificaSenha;
begin
  if editSenha.Text<>editConfirmSenha.Text then
  ShowMessage('Senhas devem ser iguais!');

end;

end.