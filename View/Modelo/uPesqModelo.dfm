object frmPesq: TfrmPesq
  Left = 0
  Top = 0
  Caption = 'Pesquisa de'
  ClientHeight = 380
  ClientWidth = 725
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 63
    Width = 725
    Height = 317
    Align = alClient
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 723
      Height = 315
      Align = alClient
      DataSource = dsPesquisa
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 725
    Height = 63
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 343
      Top = 3
      Width = 20
      Height = 13
      Caption = 'Tipo'
    end
    object btnPesquisar: TButton
      Left = 455
      Top = 16
      Width = 75
      Height = 33
      Caption = 'Pesquisar'
      TabOrder = 0
    end
    object btnNovo: TButton
      Left = 638
      Top = 16
      Width = 75
      Height = 33
      Caption = 'Novo'
      TabOrder = 1
    end
    object btnEditar: TButton
      Left = 557
      Top = 16
      Width = 75
      Height = 33
      Caption = 'Editar'
      TabOrder = 2
    end
    object editPesquisa: TLabeledEdit
      Left = 16
      Top = 22
      Width = 305
      Height = 21
      EditLabel.Width = 42
      EditLabel.Height = 13
      EditLabel.Caption = 'Pesquisa'
      TabOrder = 3
    end
    object comboDireito: TComboBox
      Left = 343
      Top = 22
      Width = 90
      Height = 21
      ItemIndex = 0
      TabOrder = 4
      Text = 'Operador'
      Items.Strings = (
        'Operador'
        'Supervisor')
    end
  end
  object cdsPesquisa: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 608
    Top = 247
  end
  object dsPesquisa: TDataSource
    DataSet = cdsPesquisa
    Left = 528
    Top = 288
  end
end
