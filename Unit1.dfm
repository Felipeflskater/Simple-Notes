object Form1: TForm1
  Left = 314
  Top = 59
  Width = 914
  Height = 645
  Caption = 'Simple Notes'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnActivate = LimpaTexto
  PixelsPerInch = 96
  TextHeight = 13
  object RichEdit1: TRichEdit
    Left = 0
    Top = 0
    Width = 897
    Height = 585
    Lines.Strings = (
      'RichEdit1')
    TabOrder = 0
  end
  object MainMenu1: TMainMenu
    Left = 128
    Top = 8
    object Arquivo1: TMenuItem
      Caption = '&Arquivo'
      object Novo1: TMenuItem
        Caption = 'Novo'
        OnClick = Novo1Click
      end
      object Abrir1: TMenuItem
        Caption = 'Abrir...'
        OnClick = Abrir1Click
      end
      object Salvar1: TMenuItem
        Caption = 'Salvar'
        OnClick = Salvar1Click
      end
      object SalvarComo1: TMenuItem
        Caption = 'Salvar Como'
        OnClick = SalvarComo1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object ConfigurarPagina1: TMenuItem
        Caption = 'Configurar P'#225'gina'
        OnClick = ConfigurarPagina1Click
      end
      object Imprimir1: TMenuItem
        Caption = 'Imprimir'
        OnClick = Imprimir1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Sair1: TMenuItem
        Caption = 'Sair'
        OnClick = Sair1Click
      end
    end
    object Editar1: TMenuItem
      Caption = 'Editar'
      object Desfazer1: TMenuItem
        Caption = 'Desfazer'
        ShortCut = 16474
        OnClick = Desfazer1Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object Recortar: TMenuItem
        Caption = 'Recortar'
        ShortCut = 16472
        OnClick = RecortarClick
      end
      object Copiar1: TMenuItem
        Caption = 'Copiar'
        ShortCut = 16451
        OnClick = Copiar1Click
      end
      object Colar1: TMenuItem
        Caption = 'Colar'
        ShortCut = 16470
        OnClick = Colar1Click
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object SelecionarTudo1: TMenuItem
        Caption = 'Selecionar Tudo'
        ShortCut = 16468
        OnClick = SelecionarTudo1Click
      end
      object N5: TMenuItem
        Caption = '-'
      end
    end
    object Sobre1: TMenuItem
      Caption = 'Sobre'
      OnClick = Sobre1Click
    end
  end
  object XPManifest1: TXPManifest
    Left = 160
    Top = 8
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'txt'
    Filter = 'Arquivo de Texto (*.Txt)|*.txt|Todos os  Arquivos (*.*)|*.*'
    Left = 96
    Top = 8
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'txt'
    Filter = 'Arquivo de Texto (*.txt)|*.txt|Todos os Arquivos (*.*)|*.*'
    Left = 64
    Top = 8
  end
  object PrintDialog1: TPrintDialog
    Left = 192
    Top = 8
  end
  object PageSetupDialog1: TPageSetupDialog
    MinMarginLeft = 0
    MinMarginTop = 0
    MinMarginRight = 0
    MinMarginBottom = 0
    MarginLeft = 2500
    MarginTop = 2500
    MarginRight = 2500
    MarginBottom = 2500
    PageWidth = 21000
    PageHeight = 29700
    Left = 224
    Top = 8
  end
end
