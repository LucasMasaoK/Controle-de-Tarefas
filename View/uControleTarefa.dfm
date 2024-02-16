object frmControleTarefa: TfrmControleTarefa
  Left = 0
  Top = 0
  Caption = 'Controle de Tarefa'
  ClientHeight = 624
  ClientWidth = 948
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 17
  object Label1: TLabel
    Left = 410
    Top = 170
    Width = 39
    Height = 17
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Label1'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 948
    Height = 121
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 31
      Top = 63
      Width = 52
      Height = 17
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Situa'#231#227'o'
    end
    object brnPesqUsuario: TSpeedButton
      Left = 93
      Top = 27
      Width = 39
      Height = 33
      Flat = True
      Glyph.Data = {
        42090000424D4209000000000000420000002800000018000000180000000100
        20000300000000090000A6000000A600000000000000000000000000FF0000FF
        0000FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00265AA75D2556A5EF2657
        A6F2275DA96EFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00275CA9562555A4FE2554A3FF2657
        A5FF2658A7F1FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00265BA7432556A4FD2554A3FF265BA9FF2863
        B0FF275CA9D9FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF002458AC312655A5FB2554A3FF265BA9FF2863B0FF2763
        B0EF265DAC4AFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF002457A8232556A5F82554A3FF265BA9FF2863B0FF2863B0E72764
        B12EFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF002E51AE162657A6F32554A3FF265BA9FF2863B0FF2863B0DE2466AF23FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002E5D
        A20B2658A6EC2554A3FF265BA9FF2863B0FF2863B0D32966AD19FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E6CC
        CC0AE5D8C23BE0D2BC6BE0D0BB31FFFFFF00FFFFFF00FFFFFF00FFFFFF00265F
        AD73265AA8FF275EACFF296DBEFF2863B0C62D69B411FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E5D8C561E6D7C4D2E5D7
        C4FCE5D7C4FFE4D6C2FFE1D2BCFFE0CFB8F4DECEB8CFDECEB51FFFFFFF01C7BA
        B0915079AFE2296DBDFF2864B3BF3366B30AFFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00E0D6C219E6D7C4B4E5D7C4FFE5D2B8E2E6C8
        9AC2E5BE83C1E5BC7EC5E4C391C0E5CEAAD0E4D6C3FFE0CFB9F3D8C4ADE6CDB4
        99FFCBB6A0CA2762B16833669905FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00E8D1B90BE4D7C4DDE5D7C3FDE4C392C0E5B771F7E5B7
        70FFE5B770FFE5B770FFE5B770FFE5B770FFE4BA7AC9E5D4BCE9E1D1BBFFD8C4
        ADE6FFFFFF02FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00E5D8C595E5D7C4FFE4BA79C8E5B770FFE5B770FFE5B7
        70FFE5B770FFE5B770FFE5B770FFE5B770FFE5B770FFE5B771EBE5D4BCE9E0CF
        B9F3DECEB51FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00E5D8C23BE5D7C4FEE2C08ED2E5B66FFFE5B770FFE5B770FFE5B7
        70FFE5B770FFE5B770FFE5B770FFE5B770FFE5B770FFE5B770FFE4BA7AC9E4D6
        C3FFDFCEB8CDFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00E4D7C486E5D7C4FFE0AC63EDE5B770FFE5B770FFE5B770FFE5B7
        70FFE5B770FFE5B770FFE5B770FFE5B770FFE5B770FFE5B770FFE5B770FFE5CE
        AAD0E0D0B9F3FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00E5D7C4BAE4CFB3EAE0AE64FFE6B975FFE7BC7DFFE5B770FFE5B7
        70FFE5B770FFE5B770FFE5B770FFE5B770FFE5B770FFE5B770FFE5B770FFE4C3
        91C0E1D2BCFFE0D0BB31FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00E5D7C5EDE0BB85D9E1B067FFE9BF84FFEBC592FFE6B874FFE5B7
        70FFE5B770FFE5B770FFE5B770FFE5B770FFE5B770FFE5B770FFE5B770FFE5BC
        7EC5E4D6C2FFE0D2BC6BFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00EADED1E8E1C093DCDFAB61FFE9BF84FFEBC592FFE8BD80FFE5B7
        70FFE5B770FFE5B770FFE5B770FFE5B770FFE5B770FFE5B770FFE5B770FFE5BE
        83C1E5D7C4FFE5D8C23BFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00EBE0D4D0E5D4BCF5DCA759FEE7BC7BFFEBC592FFEBC591FFE6BA
        76FFE5B770FFE5B770FFE5B770FFE5B770FFE5B770FFE5B770FFE5B770FFE6C8
        9AC2E5D7C4FCE6CCCC0AFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00ECE2D8AFE6D8C6FFDAA457F0E2B26BFFEAC28CFFEBC592FFEBC5
        91FFE8BD80FFE6B874FFE5B770FFE5B770FFE5B770FFE5B770FFE5B771F7E5D2
        B8E2E6D7C4D2FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00EDE1D52AEBE0D3F4E2CAA9E7DAA255FCE6B874FFEAC28CFFEBC5
        92FFEBC592FFEBC592FFE7BD7EFFE5B770FFE5B770FFE5B770FFE4C392C0E5D7
        C4FFE5D8C561FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00EBE0D78BE8DBCBFFDFB881D9DAA255FCE2B26BFFE7BC
        7CFFE9C086FFE9C086FFE6BA77FFE5B770FFE5B66FFFE3B979C9E5D7C3FDE6D7
        C4B4FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00ECE1D7CDE8DCCDFFE2CAA9E7DAA457F0DCA7
        59FEDFAB61FFE1B067FFE0AE64FFDFAB62EEE0BE8CD4E5D7C4FFE4D7C4DDE0D6
        C219FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EBE2D78CEADFD3F5E6D9C8FFE5D4
        BCF5E1C093DCE0BB85D9E4CFB1EAE5D7C4FFE5D7C4FEE5D8C595E8D1B90BFFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EDE1D52AECE1D8B1ECE1
        D6D3E9DDD0E9E5D7C5EDE5D7C4BAE4D7C486E5D8C23BFFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00}
      OnClick = brnPesqUsuarioClick
    end
    object btnPesquisar: TButton
      Left = 606
      Top = 25
      Width = 94
      Height = 41
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Pesquisar'
      TabOrder = 0
      OnClick = btnPesquisarClick
    end
    object editNome: TLabeledEdit
      Left = 152
      Top = 33
      Width = 419
      Height = 25
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      EditLabel.Width = 36
      EditLabel.Height = 17
      EditLabel.Margins.Left = 4
      EditLabel.Margins.Top = 4
      EditLabel.Margins.Right = 4
      EditLabel.Margins.Bottom = 4
      EditLabel.Caption = 'Nome'
      TabOrder = 1
    end
    object comboDireito: TComboBox
      Left = 30
      Top = 81
      Width = 113
      Height = 25
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      ItemIndex = 0
      TabOrder = 2
      Text = 'Operador'
      Items.Strings = (
        'Operador'
        'Supervisor')
    end
    object editCodigo: TLabeledEdit
      Left = 31
      Top = 33
      Width = 60
      Height = 25
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      EditLabel.Width = 43
      EditLabel.Height = 17
      EditLabel.Margins.Left = 4
      EditLabel.Margins.Top = 4
      EditLabel.Margins.Right = 4
      EditLabel.Margins.Bottom = 4
      EditLabel.Caption = 'C'#243'digo'
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 540
    Width = 948
    Height = 84
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alBottom
    TabOrder = 1
    object btnIncluir: TButton
      Left = 416
      Top = 20
      Width = 94
      Height = 41
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Incluir'
      TabOrder = 0
      OnClick = btnIncluirClick
    end
    object btnLimpar: TButton
      Left = 525
      Top = 20
      Width = 94
      Height = 41
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Limpar'
      TabOrder = 1
      OnClick = btnLimparClick
    end
    object btnSair: TButton
      Left = 636
      Top = 20
      Width = 94
      Height = 41
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Sair'
      TabOrder = 2
      OnClick = btnSairClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 121
    Width = 948
    Height = 419
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    TabOrder = 2
    object dbgTarefa: TDBGrid
      Left = 1
      Top = 1
      Width = 946
      Height = 417
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      DataSource = dsTarefa
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -14
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'COD_TAREFA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Caption = 'C'#211'DIGO'
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'Tahoma'
          Font.Style = []
          Width = 438
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'Tahoma'
          Font.Style = []
          Width = 250
          Visible = True
        end>
    end
  end
  object dsTarefa: TDataSource
    DataSet = cdsTarefa
    Left = 424
    Top = 208
  end
  object cdsTarefa: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 488
    Top = 249
    object cdsTarefaCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
    end
    object cdsTarefaCOD_TAREFA: TIntegerField
      FieldName = 'COD_TAREFA'
    end
    object cdsTarefaNOME: TStringField
      FieldName = 'NOME'
      Size = 80
    end
    object cdsTarefaTIPO: TStringField
      FieldName = 'TIPO'
      Size = 30
    end
  end
end
