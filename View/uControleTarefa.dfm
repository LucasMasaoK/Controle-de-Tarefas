object frmControleTarefa: TfrmControleTarefa
  Left = 0
  Top = 0
  Caption = 'Controle de Tarefa'
  ClientHeight = 387
  ClientWidth = 600
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 328
    Top = 136
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 600
    Height = 97
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 25
      Top = 50
      Width = 41
      Height = 13
      Caption = 'Situa'#231#227'o'
    end
    object btnPesquisar: TButton
      Left = 485
      Top = 20
      Width = 75
      Height = 33
      Caption = 'Pesquisar'
      TabOrder = 0
    end
    object editNome: TLabeledEdit
      Left = 136
      Top = 26
      Width = 321
      Height = 21
      EditLabel.Width = 27
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome'
      TabOrder = 1
    end
    object comboDireito: TComboBox
      Left = 24
      Top = 65
      Width = 90
      Height = 21
      ItemIndex = 0
      TabOrder = 2
      Text = 'Operador'
      Items.Strings = (
        'Operador'
        'Supervisor')
    end
    object editCodigo: TLabeledEdit
      Left = 25
      Top = 26
      Width = 48
      Height = 21
      EditLabel.Width = 33
      EditLabel.Height = 13
      EditLabel.Caption = 'C'#243'digo'
      TabOrder = 3
    end
    object btnLupa: TBitBtn
      Left = 79
      Top = 26
      Width = 35
      Height = 21
      Caption = 'Pesq'
      TabOrder = 4
      OnClick = btnLupaClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 320
    Width = 600
    Height = 67
    Align = alBottom
    TabOrder = 1
    object btnIncluir: TButton
      Left = 333
      Top = 16
      Width = 75
      Height = 33
      Caption = 'Incluir'
      TabOrder = 0
      OnClick = btnIncluirClick
    end
    object btnLimpar: TButton
      Left = 420
      Top = 16
      Width = 75
      Height = 33
      Caption = 'Limpar'
      TabOrder = 1
    end
    object btnSair: TButton
      Left = 509
      Top = 16
      Width = 75
      Height = 33
      Caption = 'Sair'
      TabOrder = 2
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 97
    Width = 600
    Height = 223
    Align = alClient
    TabOrder = 2
    object dbgTarefa: TDBGrid
      Left = 1
      Top = 1
      Width = 598
      Height = 221
      Align = alClient
      DataSource = dsTarefa
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'nomeTarefa'
          Title.Caption = 'Nome'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tipoTarefa'
          Title.Caption = 'Tipo'
          Visible = True
        end>
    end
  end
  object cdsTarefa: TClientDataSet
    PersistDataPacket.Data = {
      580000009619E0BD01000000180000000200000000000300000058000A6E6F6D
      655461726566610100490000000100055749445448020002001E000A7469706F
      54617265666101004900000001000557494454480200020001000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 504
    Top = 249
    object cdsTarefaNome: TStringField
      FieldKind = fkCalculated
      FieldName = 'Nome'
      Size = 30
      Calculated = True
    end
    object cdsTarefaTipo: TStringField
      FieldKind = fkCalculated
      FieldName = 'Tipo'
      Size = 1
      Calculated = True
    end
  end
  object dsTarefa: TDataSource
    DataSet = cdsTarefa
    Left = 424
    Top = 208
  end
end
