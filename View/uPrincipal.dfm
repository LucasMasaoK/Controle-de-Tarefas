object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Tela Principal'
  ClientHeight = 388
  ClientWidth = 799
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = menuPrincipal
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  object statusBar: TStatusBar
    Left = 0
    Top = 360
    Width = 799
    Height = 28
    Panels = <
      item
        Width = 250
      end
      item
        Width = 100
      end>
  end
  object menuPrincipal: TMainMenu
    Left = 248
    Top = 80
    object Sistema1: TMenuItem
      Caption = 'Sistema'
      object Sair1: TMenuItem
        Caption = 'Sair'
      end
    end
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object Cliente1: TMenuItem
        Caption = 'Cliente'
        OnClick = Cliente1Click
      end
      object arefa2: TMenuItem
        Caption = 'Tarefa'
        OnClick = arefa2Click
      end
    end
    object arefa1: TMenuItem
      Caption = 'Controle Tarefa'
      OnClick = arefa1Click
    end
  end
end
