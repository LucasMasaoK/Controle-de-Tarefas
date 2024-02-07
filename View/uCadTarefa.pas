unit uCadTarefa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadModelo, Vcl.StdCtrls, Vcl.ExtCtrls,
  uTarefa.Controller;

type
  TfrmCadTarefa = class(TfrmCad)
    editCodigo: TLabeledEdit;
    editNome: TLabeledEdit;
    comboTipo: TComboBox;
    Label1: TLabel;
    procedure btnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    FTarefaController: TTarefaController;
    procedure Salvar;
    procedure Excluir;
    function retornaTipo: String;
  public
    property TarefaController: TTarefaController read FTarefaController
      write FTarefaController;
  end;

var
  frmCadTarefa: TfrmCadTarefa;

implementation

uses uAcao, uPesqTarefa;
{$R *.dfm}
{ TfrmCad1 }

procedure TfrmCadTarefa.btnEditarClick(Sender: TObject);
begin
  inherited;
  TarefaController.Tarefa.Acao := acEditar;
end;

procedure TfrmCadTarefa.btnExcluirClick(Sender: TObject);
begin
  inherited;
  Self.Excluir;
end;

procedure TfrmCadTarefa.btnNovoClick(Sender: TObject);
begin
  inherited;
  TarefaController.Tarefa.Acao := acNovo;
  editCodigo.Text := TarefaController.getID;
end;

procedure TfrmCadTarefa.btnPesquisarClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmPesTarefa, frmPesTarefa);
  try
    frmPesTarefa.ShowModal;
    with frmPesTarefa.TarefaController.Tarefa do
    begin
      editCodigo.Text := IntToStr(Codigo);
      editNome.Text := Nome;
    end;
  finally
    FreeAndNil(frmPesTarefa);
  end;
end;

procedure TfrmCadTarefa.btnSalvarClick(Sender: TObject);
begin
  inherited;
  Self.Salvar;
end;

procedure TfrmCadTarefa.Excluir;
begin
  if (editCodigo.Text = EmptyStr) or (editNome.Text = EmptyStr) then
  begin
    ShowMessage('Carregue um registro!');
    exit;
  end;
  TarefaController.Tarefa.Acao := acDeletar;
  TarefaController.Tarefa.Codigo := StrToInt(editCodigo.Text);
  if TarefaController.Persistir then
    ShowMessage('Opera��o realizada com sucesso!')
  else
    ShowMessage('Erro ao realizar opera��o!');
end;

procedure TfrmCadTarefa.FormCreate(Sender: TObject);
begin
  inherited;
  TarefaController := TTarefaController.Create;
end;

function TfrmCadTarefa.retornaTipo: String;
begin
  case comboTipo.ItemIndex of
    0:
      Result := 'D';
    1:
      Result := 'S';
    2:
      Result := 'Q';
    3:
      Result := 'M';
  end;
end;

procedure TfrmCadTarefa.Salvar;
begin
  if editNome.Text = EmptyStr then
    ShowMessage('Preenchimento obrigat�rio campo NOME');
  with TarefaController.Tarefa do
  begin
    Codigo := StrToInt(editCodigo.Text);
    Nome := editNome.Text;
    Tipo := retornaTipo;
  end;
  if TarefaController.Persistir then
    ShowMessage('Opera��o realizada com sucesso!')
  else
    ShowMessage('Erro ao realizar opera��o!');
end;

end.
