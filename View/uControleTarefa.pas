unit uControleTarefa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient;

type
  TfrmControleTarefa = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    dbgTarefa: TDBGrid;
    btnIncluir: TButton;
    btnLimpar: TButton;
    btnSair: TButton;
    btnPesquisar: TButton;
    editNome: TLabeledEdit;
    comboDireito: TComboBox;
    editCodigo: TLabeledEdit;
    btnLupa: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    cdsTarefa: TClientDataSet;
    dsTarefa: TDataSource;
    cdsTarefaNome: TStringField;
    cdsTarefaTipo: TStringField;
    procedure btnLupaClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
  private
    procedure pesquisarCliente;
    function pesquisarClienteCOD: string;
    procedure Incluir;
  public
    { Public declarations }
  end;

var
  frmControleTarefa: TfrmControleTarefa;

implementation

uses uPesqCliente, uPesqTarefa;
{$R *.dfm}
{ TfrmControleTarefa }

procedure TfrmControleTarefa.btnIncluirClick(Sender: TObject);
begin
  Self.Incluir;
end;

procedure TfrmControleTarefa.btnLupaClick(Sender: TObject);
begin
  Self.pesquisarCliente;
end;

procedure TfrmControleTarefa.Incluir;
begin
  if (editCodigo.Text = EmptyStr) or (editNome.Text = EmptyStr) then
  begin
    ShowMessage('Selecione um usu�rio!');
    exit;
  end;
  Application.CreateForm(TfrmPesTarefa, frmPesTarefa);
  try
    frmPesTarefa.ShowModal;
    with frmPesTarefa.TarefaController.Tarefa, cdsTarefa do
    begin
      cdsTarefa.Append;
      FieldByName('Nome').AsString := frmPesTarefa.TarefaController.Tarefa.Nome;
      FieldByName('Tipo').AsString := frmPesTarefa.TarefaController.Tarefa.Tipo;

    end;
  finally
    FreeAndNil(frmPesTarefa);
  end;

end;

procedure TfrmControleTarefa.pesquisarCliente;
begin
  Application.CreateForm(TfrmPesqCliente, frmPesqCliente);
  try
    frmPesqCliente.ShowModal;
    with frmPesqCliente.usuarioController.Usuario do
    begin
      editCodigo.Text := IntToStr(Codigo);
      editNome.Text := Nome;
    end;
  finally
    FreeAndNil(frmPesqCliente);
  end;
end;

function TfrmControleTarefa.pesquisarClienteCOD: string;
begin

end;

end.
