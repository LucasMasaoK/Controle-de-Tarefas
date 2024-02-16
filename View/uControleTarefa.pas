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
    Label1: TLabel;
    Label2: TLabel;
    dsTarefa: TDataSource;
    cdsTarefa: TClientDataSet;
    cdsTarefaCOD_USUARIO: TIntegerField;
    cdsTarefaCOD_TAREFA: TIntegerField;
    cdsTarefaNOME: TStringField;
    cdsTarefaTIPO: TStringField;
    brnPesqUsuario: TSpeedButton;
    procedure btnIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure brnPesqUsuarioClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    FTarefa: TCtlTarefaController;
    procedure pesquisarCliente;
    procedure pesquisarTarefa;
    function pesquisarClienteCOD: string;
    procedure Incluir;
    function verificaPermissao: Boolean;
  public
    property Tarefa: TCtlTarefaController read FTarefa write FTarefa;
  end;

var
  frmControleTarefa: TfrmControleTarefa;

implementation

uses uPesqCliente, uPesqTarefa, uAcao, uLogin;
{$R *.dfm}
{ TfrmControleTarefa }

procedure TfrmControleTarefa.brnPesqUsuarioClick(Sender: TObject);
begin
  Self.pesquisarCliente;
  Self.pesquisarTarefa;
end;

procedure TfrmControleTarefa.btnIncluirClick(Sender: TObject);
begin
  if not Self.verificaPermissao then
    exit;
  Self.Incluir;
end;

procedure TfrmControleTarefa.btnLimparClick(Sender: TObject);
begin
  if not Self.verificaPermissao then
    exit;

  if Application.MessageBox('Deseja excluir todas as tarefas?',
    'Deseja continuar?', mb_yesno + mb_iconquestion) = id_yes then
  begin
    Tarefa.CtlTarefa.Acao := acDeletar;
    Tarefa.Persistir;
    Self.pesquisarTarefa;
  end;
end;

procedure TfrmControleTarefa.btnPesquisarClick(Sender: TObject);
begin
  Self.pesquisarTarefa;
end;

procedure TfrmControleTarefa.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmControleTarefa.FormCreate(Sender: TObject);
begin
  Tarefa := TCtlTarefaController.Create;
end;

procedure TfrmControleTarefa.Incluir;
begin
  Application.CreateForm(TfrmPesTarefa, frmPesTarefa);
  try
    frmPesTarefa.ShowModal;
    if frmPesTarefa.TarefaController.Tarefa.Codigo > 0 then
    begin
      Tarefa.CtlTarefa.Usuario := StrToInt(editCodigo.Text);
      Tarefa.CtlTarefa.Tarefa := frmPesTarefa.TarefaController.Tarefa.Codigo;
      Tarefa.CtlTarefa.Acao := acNovo;
      if not Tarefa.Persistir then
        ShowMessage('Tarefa j� cadastrada');
      Self.pesquisarTarefa;
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

procedure TfrmControleTarefa.pesquisarTarefa;
begin
  Tarefa.CtlTarefa.Acao := acPequisar;
  Tarefa.CtlTarefa.Usuario := StrToInt(editCodigo.Text);
  cdsTarefa := Tarefa.Pesquisar;
  dsTarefa.DataSet := cdsTarefa;
end;

function TfrmControleTarefa.verificaPermissao: Boolean;
begin
  if (editCodigo.Text = EmptyStr) or (editNome.Text = EmptyStr) then
  begin
    ShowMessage('Selecione um usu�rio!');
    exit;
  end;
  if trim(frmLogin.Usuario.Direito) = 'Operador' then
  begin
    ShowMessage('Necess�rio permiss�o Supervisor para adicionar Tarefas!');
    btnIncluir.Enabled := False;
    btnLimpar.Enabled := False;
    Result := False;
  end
  else
    Result := True;
end;

end.
