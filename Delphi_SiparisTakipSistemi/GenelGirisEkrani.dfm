object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Genel Giri'#351' Ekran'#305
  ClientHeight = 385
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 505
    Height = 385
    Align = alClient
    TabOrder = 0
    object btnYoneticiGiris: TButton
      Left = 128
      Top = 56
      Width = 217
      Height = 89
      Caption = 'Y'#214'NET'#304'C'#304' G'#304'R'#304#350
      TabOrder = 0
      OnClick = btnYoneticiGirisClick
    end
    object btnTedarikciGiris: TButton
      Left = 128
      Top = 184
      Width = 217
      Height = 89
      Caption = 'TEDAR'#304'K'#199#304' G'#304'R'#304#350
      TabOrder = 1
      OnClick = btnTedarikciGirisClick
    end
  end
end
