object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Form5'
  ClientHeight = 420
  ClientWidth = 415
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
    Width = 415
    Height = 420
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 162
      Top = 136
      Width = 58
      Height = 13
      Caption = 'AD - SOYAD'
    end
    object Label2: TLabel
      Left = 176
      Top = 203
      Width = 29
      Height = 13
      Caption = #350#304'FRE'
    end
    object Label3: TLabel
      Left = 120
      Top = 64
      Width = 150
      Height = 23
      Caption = 'TEDAR'#304'K'#199#304' G'#304'R'#304#350
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 136
      Top = 168
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 136
      Top = 240
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object btnTedarikciGirisYap: TButton
      Left = 136
      Top = 304
      Width = 121
      Height = 41
      Caption = 'G'#304'R'#304#350' YAP'
      TabOrder = 2
      OnClick = btnTedarikciGirisYapClick
    end
  end
end
