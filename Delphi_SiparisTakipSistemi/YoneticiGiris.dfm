object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 442
  ClientWidth = 426
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
    Width = 426
    Height = 442
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 161
      Top = 141
      Width = 58
      Height = 13
      Caption = 'AD - SOYAD'
    end
    object Label2: TLabel
      Left = 176
      Top = 232
      Width = 29
      Height = 13
      Caption = #350#304'FRE'
    end
    object Label3: TLabel
      Left = 125
      Top = 80
      Width = 140
      Height = 23
      Caption = 'Y'#214'NET'#304'C'#304' G'#304'R'#304#350
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 133
      Top = 176
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 133
      Top = 272
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object btnYoneticiGirisYap: TButton
      Left = 133
      Top = 320
      Width = 121
      Height = 41
      Caption = 'G'#304'R'#304#350' YAP'
      TabOrder = 2
      OnClick = btnYoneticiGirisYapClick
    end
  end
end
