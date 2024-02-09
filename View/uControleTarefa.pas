unit uControleTarefa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient, uCtlTarefa,
  uCtlTarefa.Controller;

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
    dsTarefa: TDataSource;
    cdsTarefa: TClientDataSet;
    procedure btnLupaClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
  private
    FTarefa: TCtlTarefaController;
    procedure pesquisarCliente;
    procedure pesquisarTarefa;
    function pesquisarClienteCOD: string;
    procedure Incluir;
  public
    property Tarefa: TCtlTarefaController read FTarefa write FTarefa;
  end;

var
  frmControleTarefa: TfrmControleTarefa;

implementation

uses uPesqCliente, uPesqTarefa, uAcao;
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

procedure TfrmControleTarefa.btnPesquisarClick(Sender: TObject);
begin
  Self.pesquisarTarefa;
end;

procedure TfrmControleTarefa.FormCreate(Sender: TObject);
begin
  Tarefa := TCtlTarefaController.Create;
end;

procedure TfrmControleTarefa.Incluir;
begin
  if (editCodigo.Text = EmptyStr) or (editNome.Text = EmptyStr) then
  begin
    ShowMessage('Selecione um usuário!');
    exit;
  end;
  Application.CreateForm(TfrmPesTarefa, frmPesTarefa);
  try
    frmPesTarefa.ShowModal;
    Tarefa.CtlTarefa.Usuario := StrToInt(editCodigo.Text);
    Tarefa.CtlTarefa.Tarefa := frmPesTarefa.TarefaController.Tarefa.Codigo;
    Tarefa.CtlTarefa.Acao := acNovo;
    if not Tarefa.Persistir then
      ShowMessage('Tarefa já cadastrada');
    Self.pesquisarTarefa;
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

procedure TfrmControleTarefa.pesquisarTarefa;
begin
  Tarefa.CtlTarefa.Acao := acPequisar;
  Tarefa.CtlTarefa.Usuario := StrToInt(editCodigo.Text);
  cdsTarefa := Tarefa.Pesquisar;
  dsTarefa.DataSet := cdsTarefa;
  if cdsTarefa.RecordCount = 0 then
    ShowMessage('Nenhum registro encontrado');
end;

end.
