inherited frmPesTarefa: TfrmPesTarefa
  Caption = 'Pesquisa de Tarefa'
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    inherited gridPesquisa: TDBGrid
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      OnColEnter = gridPesquisaColEnter
      OnDblClick = gridPesquisaDblClick
      OnKeyPress = gridPesquisaKeyPress
    end
  end
  inherited Panel1: TPanel
    inherited btnPesquisar: TButton
      OnClick = btnPesquisarClick
    end
    inherited btnEditar: TButton
      Caption = 'Selecionar'
      OnClick = btnEditarClick
      OnKeyPress = btnEditarKeyPress
    end
    inherited comboDireito: TComboBox
      ItemIndex = -1
      Text = 'Di'#225'ria'
      Items.Strings = (
        'Di'#225'ria')
    end
  end
end
