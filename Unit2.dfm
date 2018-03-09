object Form2: TForm2
  Left = 465
  Top = 212
  Width = 466
  Height = 344
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Sobre'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = -8
    Width = 449
    Height = 313
    TabOrder = 0
    object Label1: TLabel
      Left = 112
      Top = 32
      Width = 204
      Height = 36
      Caption = 'Simple Notes'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Showcard Gothic'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 176
      Top = 160
      Width = 90
      Height = 24
      Caption = 'Vers'#227'o 1.5'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 152
      Top = 112
      Width = 145
      Height = 16
      Caption = 'Felipe Prestes Aranalde'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Fechar: TButton
      Left = 160
      Top = 232
      Width = 113
      Height = 41
      Caption = 'Voltar'
      TabOrder = 0
      OnClick = FecharClick
    end
  end
  object XPManifest1: TXPManifest
    Left = 400
    Top = 264
  end
end
