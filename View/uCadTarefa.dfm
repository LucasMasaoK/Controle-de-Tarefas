inherited frmCadTarefa: TfrmCadTarefa
  Caption = 'Cadastro Tarefa'
  ClientHeight = 307
  ClientWidth = 602
  OnCreate = FormCreate
  ExplicitWidth = 618
  ExplicitHeight = 346
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 244
    Width = 602
    ExplicitTop = 244
    ExplicitWidth = 602
    inherited btnSalvar: TButton
      OnClick = btnSalvarClick
    end
    inherited btnExcluir: TButton
      OnClick = btnExcluirClick
    end
    inherited btnPesquisar: TButton
      OnClick = btnPesquisarClick
    end
    inherited btnNovo: TButton
      OnClick = btnNovoClick
    end
    inherited btnEditar: TButton
      OnClick = btnEditarClick
    end
  end
  inherited Panel2: TPanel
    Width = 602
    Height = 244
    ExplicitWidth = 602
    ExplicitHeight = 244
    object Label1: TLabel
      Left = 22
      Top = 133
      Width = 20
      Height = 13
      Caption = 'Tipo'
    end
    object editCodigo: TLabeledEdit
      Left = 22
      Top = 40
      Width = 33
      Height = 21
      EditLabel.Width = 33
      EditLabel.Height = 13
      EditLabel.Caption = 'C'#243'digo'
      NumbersOnly = True
      TabOrder = 0
    end
    object editNome: TLabeledEdit
      Left = 22
      Top = 96
      Width = 305
      Height = 21
      EditLabel.Width = 27
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome'
      MaxLength = 30
      TabOrder = 1
    end
    object comboTipo: TComboBox
      Left = 22
      Top = 152
      Width = 145
      Height = 21
      ItemIndex = 0
      TabOrder = 2
      Text = 'Di'#225'ria'
      Items.Strings = (
        'Di'#225'ria'
        'Semanal'
        'Quinzenal'
        'Mensal')
    end
  end
end
