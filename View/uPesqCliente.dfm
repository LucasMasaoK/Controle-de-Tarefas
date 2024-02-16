inherited frmPesqCliente: TfrmPesqCliente
  Caption = 'Pesquisa de Cliente'
  ClientHeight = 613
  ClientWidth = 1143
  Font.Height = -14
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitWidth = 1161
  ExplicitHeight = 660
  PixelsPerInch = 96
  TextHeight = 17
  inherited Panel2: TPanel
    Top = 79
    Width = 1143
    Height = 534
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    ExplicitTop = 79
    ExplicitWidth = 1143
    ExplicitHeight = 534
    inherited gridPesquisa: TDBGrid
      Width = 1141
      Height = 532
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TitleFont.Height = -14
      OnDblClick = gridPesquisaDblClick
      OnKeyPress = gridPesquisaKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Width = 625
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DIREITO'
          Width = 155
          Visible = True
        end>
    end
  end
  inherited Panel1: TPanel
    Width = 1143
    Height = 79
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    ExplicitWidth = 1143
    ExplicitHeight = 79
    inherited Label1: TLabel
      Left = 429
      Top = 4
      Width = 26
      Height = 17
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      ExplicitLeft = 429
      ExplicitTop = 4
      ExplicitWidth = 26
      ExplicitHeight = 17
    end
    inherited btnPesquisar: TButton
      Left = 569
      Top = 20
      Width = 94
      Height = 41
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      OnClick = btnPesquisarClick
      ExplicitLeft = 569
      ExplicitTop = 20
      ExplicitWidth = 94
      ExplicitHeight = 41
    end
    inherited btnNovo: TButton
      Left = 798
      Top = 20
      Width = 93
      Height = 41
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      ExplicitLeft = 798
      ExplicitTop = 20
      ExplicitWidth = 93
      ExplicitHeight = 41
    end
    inherited btnEditar: TButton
      Left = 696
      Top = 20
      Width = 94
      Height = 41
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Selecionar'
      OnClick = btnEditarClick
      ExplicitLeft = 696
      ExplicitTop = 20
      ExplicitWidth = 94
      ExplicitHeight = 41
    end
    inherited editPesquisa: TLabeledEdit
      Left = 20
      Top = 28
      Width = 381
      Height = 25
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      EditLabel.Width = 52
      EditLabel.Height = 17
      EditLabel.Margins.Left = 4
      EditLabel.Margins.Top = 4
      EditLabel.Margins.Right = 4
      EditLabel.Margins.Bottom = 4
      EditLabel.ExplicitLeft = 20
      EditLabel.ExplicitTop = 8
      EditLabel.ExplicitWidth = 52
      EditLabel.ExplicitHeight = 17
      ExplicitLeft = 20
      ExplicitTop = 28
      ExplicitWidth = 381
      ExplicitHeight = 25
    end
    inherited comboDireito: TComboBox
      Left = 429
      Top = 28
      Width = 112
      Height = 25
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      ExplicitLeft = 429
      ExplicitTop = 28
      ExplicitWidth = 112
      ExplicitHeight = 25
    end
  end
  inherited cdsPesquisa: TClientDataSet
    Left = 592
    Top = 295
    object cdsPesquisaCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object cdsPesquisaNOME: TStringField
      FieldName = 'NOME'
      Size = 80
    end
    object cdsPesquisaDIREITO: TStringField
      FieldName = 'DIREITO'
    end
    object cdsPesquisaSENHA: TStringField
      FieldName = 'SENHA'
      Size = 30
    end
  end
end
