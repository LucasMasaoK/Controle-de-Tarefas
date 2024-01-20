unit uCadTarefa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadModelo, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmCadTarefa = class(TfrmCad)
    editCodigo: TLabeledEdit;
    editNome: TLabeledEdit;
    comboDireito: TComboBox;
    Label1: TLabel;
    procedure btnSalvarClick(Sender: TObject);
  private
    procedure Salvar;
  public
    { Public declarations }
  end;

var
  frmCadTarefa: TfrmCadTarefa;

implementation

{$R *.dfm}
{ TfrmCad1 }

procedure TfrmCadTarefa.btnSalvarClick(Sender: TObject);
begin
  inherited;
  Self.Salvar;
end;

procedure TfrmCadTarefa.Salvar;
begin
  if editNome.Text = EmptyStr then
    ShowMessage('Preenchimento obrigatório campo NOME');

end;

end.
