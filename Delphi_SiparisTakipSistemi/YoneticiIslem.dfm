object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 529
  ClientWidth = 699
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
    Width = 699
    Height = 81
    Align = alTop
    TabOrder = 0
    object Label10: TLabel
      Left = 56
      Top = 24
      Width = 47
      Height = 13
      Caption = 'Y'#246'netici : '
    end
    object Label11: TLabel
      Left = 134
      Top = 24
      Width = 40
      Height = 13
      Caption = 'Ad - syd'
    end
    object Label12: TLabel
      Left = 56
      Top = 56
      Width = 58
      Height = 13
      Caption = 'Y'#246'netici ID :'
    end
    object Label13: TLabel
      Left = 134
      Top = 56
      Width = 11
      Height = 13
      Caption = 'ID'
    end
    object btnCikisYap: TButton
      Left = 608
      Top = 24
      Width = 75
      Height = 45
      Caption = #199#305'k'#305#351' Yap'
      TabOrder = 0
    end
    object DateTimePicker2: TDateTimePicker
      Left = 390
      Top = 24
      Width = 186
      Height = 21
      Date = 44549.000000000000000000
      Time = 0.941863148145785100
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 81
    Width = 129
    Height = 448
    Align = alLeft
    TabOrder = 1
    object btnHammadde: TButton
      Left = 14
      Top = 25
      Width = 99
      Height = 32
      Caption = 'Hammadde'
      TabOrder = 0
      OnClick = btnHammaddeClick
    end
    object btnTedarikciSiparis: TButton
      Left = 14
      Top = 155
      Width = 99
      Height = 32
      Caption = 'Tedarik'#231'i Sipari'#351
      TabOrder = 1
      OnClick = btnTedarikciSiparisClick
    end
    object btnOdemeDurumlari: TButton
      Left = 14
      Top = 234
      Width = 99
      Height = 29
      Caption = #214'deme Durumlar'#305
      TabOrder = 2
      OnClick = btnOdemeDurumlariClick
    end
    object btnKasa: TButton
      Left = 14
      Top = 301
      Width = 99
      Height = 25
      Caption = 'Kasa'
      TabOrder = 3
      OnClick = btnKasaClick
    end
    object btnUrunler: TButton
      Left = 14
      Top = 96
      Width = 99
      Height = 25
      Caption = #220'r'#252'nler'
      TabOrder = 4
      OnClick = btnUrunlerClick
    end
  end
  object Panel3: TPanel
    Left = 129
    Top = 81
    Width = 570
    Height = 448
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 2
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 568
      Height = 446
      ActivePage = TabSheet5
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Hammadde'
        object Label1: TLabel
          Left = 56
          Top = 64
          Width = 78
          Height = 13
          Caption = 'Hammadde Ad'#305' :'
        end
        object Label2: TLabel
          Left = 56
          Top = 104
          Width = 118
          Height = 13
          Caption = 'Hammadde Stok (Adet) :'
        end
        object Label3: TLabel
          Left = 56
          Top = 145
          Width = 30
          Height = 13
          Caption = #220'r'#252'n :'
        end
        object Edit1: TEdit
          Left = 359
          Top = 61
          Width = 121
          Height = 21
          TabOrder = 0
        end
        object ComboBox1: TComboBox
          Left = 359
          Top = 142
          Width = 121
          Height = 21
          TabOrder = 1
        end
        object btnHammaddeEkle: TButton
          Left = 56
          Top = 361
          Width = 89
          Height = 25
          Caption = 'Ekle'
          TabOrder = 2
          OnClick = btnHammaddeEkleClick
        end
        object btnHammaddeGuncelle: TButton
          Left = 167
          Top = 362
          Width = 89
          Height = 25
          Caption = 'G'#252'ncelle'
          TabOrder = 3
          OnClick = btnHammaddeGuncelleClick
        end
        object btnHammaddeKaldir: TButton
          Left = 391
          Top = 361
          Width = 90
          Height = 25
          Caption = 'Kald'#305'r'
          TabOrder = 4
          OnClick = btnHammaddeKaldirClick
        end
        object NumberBox3: TNumberBox
          Left = 359
          Top = 101
          Width = 121
          Height = 21
          TabOrder = 5
        end
        object StringGrid1: TStringGrid
          Left = 56
          Top = 185
          Width = 425
          Height = 152
          ColCount = 1
          FixedCols = 0
          RowCount = 2
          TabOrder = 6
          OnDblClick = StringGrid1DblClick
        end
        object btnHammaddeTemizle: TButton
          Left = 279
          Top = 361
          Width = 89
          Height = 25
          Caption = 'Temizle'
          TabOrder = 7
          OnClick = btnHammaddeTemizleClick
        end
      end
      object TabSheet6: TTabSheet
        Caption = #220'r'#252'nler'
        ImageIndex = 5
        object Label6: TLabel
          Left = 64
          Top = 64
          Width = 48
          Height = 13
          Caption = #220'r'#252'n Ad'#305' :'
        end
        object Label7: TLabel
          Left = 64
          Top = 107
          Width = 59
          Height = 13
          Caption = #220'r'#252'n Fiyat'#305' :'
        end
        object Label16: TLabel
          Left = 64
          Top = 144
          Width = 59
          Height = 13
          Caption = 'Stok(Adet) :'
        end
        object Edit3: TEdit
          Left = 352
          Top = 61
          Width = 121
          Height = 21
          TabOrder = 0
        end
        object NumberBox2: TNumberBox
          Left = 352
          Top = 104
          Width = 121
          Height = 21
          TabOrder = 1
        end
        object btnUrunlerEkle: TButton
          Left = 64
          Top = 355
          Width = 75
          Height = 25
          Caption = 'Ekle'
          TabOrder = 2
          OnClick = btnUrunlerEkleClick
        end
        object btnUrunlerGuncelle: TButton
          Left = 176
          Top = 355
          Width = 75
          Height = 25
          Caption = 'G'#252'ncelle'
          TabOrder = 3
          OnClick = btnUrunlerGuncelleClick
        end
        object btnUrunlerKaldir: TButton
          Left = 392
          Top = 355
          Width = 75
          Height = 25
          Caption = 'Kald'#305'r'
          TabOrder = 4
          OnClick = btnUrunlerKaldirClick
        end
        object btnTemizle: TButton
          Left = 287
          Top = 356
          Width = 75
          Height = 25
          Caption = 'Temizle'
          TabOrder = 5
          OnClick = btnTemizleClick
        end
        object StringGrid2: TStringGrid
          Left = 64
          Top = 188
          Width = 409
          Height = 145
          ColCount = 1
          FixedCols = 0
          RowCount = 2
          TabOrder = 6
          OnDblClick = StringGrid2DblClick
        end
        object NumberBox4: TNumberBox
          Left = 352
          Top = 141
          Width = 121
          Height = 21
          TabOrder = 7
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Tedarik'#231'i Sipari'#351
        ImageIndex = 1
        object ComboBox2: TComboBox
          Left = 32
          Top = 73
          Width = 145
          Height = 21
          TabOrder = 0
          Text = 'ComboBox2'
        end
        object btnTedarikciSiparisGuncelle: TButton
          Left = 392
          Top = 71
          Width = 123
          Height = 25
          Caption = 'G'#252'ncelle'
          TabOrder = 1
          OnClick = btnTedarikciSiparisGuncelleClick
        end
        object StringGrid3: TStringGrid
          Left = 32
          Top = 130
          Width = 481
          Height = 247
          ColCount = 1
          FixedCols = 0
          RowCount = 2
          TabOrder = 2
          OnDblClick = StringGrid3DblClick
        end
      end
      object TabSheet4: TTabSheet
        Caption = #214'deme Durumlar'#305
        ImageIndex = 3
        object Label14: TLabel
          Left = 32
          Top = 19
          Width = 193
          Height = 13
          Caption = #214'DEME MA'#304'L'#304' ATILACAK TEDAR'#304'K'#199#304'LER'
        end
        object Label15: TLabel
          Left = 32
          Top = 225
          Width = 166
          Height = 13
          Caption = #214'DEMES'#304' GEC'#304'KEN TEDAR'#304'K'#199#304'LER'
        end
        object StringGrid4: TStringGrid
          Left = 32
          Top = 48
          Width = 433
          Height = 136
          ColCount = 1
          FixedCols = 0
          RowCount = 2
          TabOrder = 0
          ColWidths = (
            64)
        end
        object StringGrid5: TStringGrid
          Left = 32
          Top = 257
          Width = 441
          Height = 136
          ColCount = 1
          FixedCols = 0
          RowCount = 2
          TabOrder = 1
        end
      end
      object TabSheet5: TTabSheet
        Caption = 'Kasa'
        ImageIndex = 4
        object Label4: TLabel
          Left = 40
          Top = 24
          Width = 50
          Height = 13
          Caption = #304#351'lem T'#252'r'#252
        end
        object Label5: TLabel
          Left = 40
          Top = 112
          Width = 26
          Height = 13
          Caption = 'Tutar'
        end
        object Label8: TLabel
          Left = 312
          Top = 24
          Width = 69
          Height = 13
          Caption = 'Kasa Toplam'#305' :'
        end
        object Label9: TLabel
          Left = 392
          Top = 24
          Width = 6
          Height = 13
          Caption = '0'
        end
        object ComboBox4: TComboBox
          Left = 40
          Top = 75
          Width = 145
          Height = 21
          TabOrder = 0
          Text = 'ComboBox4'
        end
        object NumberBox1: TNumberBox
          Left = 40
          Top = 147
          Width = 121
          Height = 21
          TabOrder = 1
        end
        object btnKasaIslemiOnayla: TButton
          Left = 368
          Top = 360
          Width = 75
          Height = 25
          Caption = #304#351'lemi Onayla'
          TabOrder = 2
          OnClick = btnKasaIslemiOnaylaClick
        end
        object StringGrid6: TStringGrid
          Left = 40
          Top = 209
          Width = 433
          Height = 120
          ColCount = 1
          FixedCols = 0
          RowCount = 2
          TabOrder = 3
          ColWidths = (
            74)
          ColAligments = (
            1)
        end
      end
    end
  end
  object BindSourceDB1: TBindSourceDB
    ScopeMappings = <>
    Left = 16
    Top = 464
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 300
    Top = 13
    object LinkListControlToField1: TLinkListControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'UrunAdi'
      Control = ComboBox1
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkGridToDataSourceBindSourceDB3: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = BindSourceDB3
      GridControl = StringGrid1
      Columns = <>
    end
    object LinkGridToDataSourceBindSourceDB4: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = BindSourceDB4
      GridControl = StringGrid2
      Columns = <>
    end
    object LinkGridToDataSourceBindSourceDB5: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = BindSourceDB5
      GridControl = StringGrid3
      Columns = <>
    end
    object LinkListControlToField2: TLinkListControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB6
      FieldName = 'SiparisDurumm'
      Control = ComboBox2
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkGridToDataSourceBindSourceDB7: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = BindSourceDB7
      GridControl = StringGrid4
      Columns = <>
    end
    object LinkGridToDataSourceBindSourceDB8: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = BindSourceDB8
      GridControl = StringGrid5
      Columns = <>
    end
    object LinkListControlToField3: TLinkListControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB9
      FieldName = 'YapilanIslemAdi'
      Control = ComboBox4
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkGridToDataSourceBindSourceDB11: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = BindSourceDB11
      GridControl = StringGrid6
      Columns = <>
    end
  end
  object BindSourceDB2: TBindSourceDB
    DataSet = DataModule2.TUrunCombo
    ScopeMappings = <>
    Left = 80
    Top = 472
  end
  object BindSourceDB3: TBindSourceDB
    DataSet = DataModule2.QHammaddeGoruntule
    ScopeMappings = <>
    Left = 224
    Top = 16
  end
  object BindSourceDB4: TBindSourceDB
    DataSet = DataModule2.QUrunGoruntule
    ScopeMappings = <>
    Left = 488
    Top = 48
  end
  object BindSourceDB5: TBindSourceDB
    DataSet = DataModule2.QSiparisDurum
    ScopeMappings = <>
    Left = 544
    Top = 56
  end
  object BindSourceDB6: TBindSourceDB
    DataSet = DataModule2.TSiparisDurum
    ScopeMappings = <>
    Left = 8
    Top = 16
  end
  object BindSourceDB7: TBindSourceDB
    DataSet = DataModule2.QTarihKarsilastirma
    ScopeMappings = <>
    Left = 632
    Top = 488
  end
  object BindSourceDB8: TBindSourceDB
    DataSet = DataModule2.QOdemesiGecikenler
    ScopeMappings = <>
    Left = 640
    Top = 448
  end
  object BindSourceDB9: TBindSourceDB
    DataSet = DataModule2.TYapilanIslem
    ScopeMappings = <>
    Left = 456
    Top = 232
  end
  object BindSourceDB10: TBindSourceDB
    DataSet = DataModule2.QKasaDetay
    ScopeMappings = <>
    Left = 352
    Top = 224
  end
  object BindSourceDB11: TBindSourceDB
    DataSet = DataModule2.QIslemGoruntuleme
    ScopeMappings = <>
    Left = 408
    Top = 216
  end
end
