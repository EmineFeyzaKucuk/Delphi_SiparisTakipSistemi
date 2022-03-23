object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 520
  ClientWidth = 718
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 81
    Width = 129
    Height = 439
    Align = alLeft
    TabOrder = 0
    object btnSiparisOlustur: TButton
      Left = 16
      Top = 40
      Width = 99
      Height = 25
      Caption = 'Sipari'#351' Olu'#351'tur'
      TabOrder = 0
      OnClick = btnSiparisOlusturClick
    end
    object btnSiparisDurumum: TButton
      Left = 16
      Top = 136
      Width = 99
      Height = 25
      Caption = 'Sipari'#351' Durumum'
      TabOrder = 1
      OnClick = btnSiparisDurumumClick
    end
    object btnOdemeDurumum: TButton
      Left = 16
      Top = 184
      Width = 99
      Height = 25
      Caption = #214'deme Ekran'#305
      TabOrder = 2
      OnClick = btnOdemeDurumumClick
    end
    object btnSepetim: TButton
      Left = 16
      Top = 87
      Width = 99
      Height = 25
      Caption = 'Sepetim'
      TabOrder = 3
      OnClick = btnSepetimClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 718
    Height = 81
    Align = alTop
    TabOrder = 1
    object Label3: TLabel
      Left = 40
      Top = 46
      Width = 42
      Height = 13
      Caption = 'Tedarik'#231'i'
    end
    object Label4: TLabel
      Left = 40
      Top = 16
      Width = 56
      Height = 13
      Caption = 'Tedarik'#231'i ID'
    end
    object Label5: TLabel
      Left = 128
      Top = 46
      Width = 32
      Height = 13
      Caption = 'ad syd'
    end
    object Label6: TLabel
      Left = 128
      Top = 16
      Width = 8
      Height = 13
      Caption = 'id'
    end
    object btnCikisYap: TButton
      Left = 584
      Top = 20
      Width = 75
      Height = 55
      Caption = #199#305'k'#305#351' Yap'
      TabOrder = 0
    end
  end
  object Panel3: TPanel
    Left = 129
    Top = 81
    Width = 589
    Height = 439
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 2
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 587
      Height = 437
      ActivePage = TabSheet4
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Sipari'#351' Olu'#351'tur'
        object Label2: TLabel
          Left = 488
          Top = 48
          Width = 49
          Height = 13
          Caption = #220'r'#252'n Adet'
        end
        object NumberBox1: TNumberBox
          Left = 488
          Top = 81
          Width = 73
          Height = 21
          TabOrder = 0
        end
        object btnSiparisOlusturSepeteEkle: TButton
          Left = 488
          Top = 135
          Width = 73
          Height = 25
          Caption = 'Sepete Ekle'
          TabOrder = 1
          OnClick = btnSiparisOlusturSepeteEkleClick
        end
        object btnSiparisOlusturSepeteGit: TButton
          Left = 487
          Top = 183
          Width = 73
          Height = 25
          Caption = 'Sepete Git'
          TabOrder = 2
          OnClick = btnSiparisOlusturSepeteGitClick
        end
        object StringGrid1: TStringGrid
          Left = 16
          Top = 48
          Width = 457
          Height = 249
          ColCount = 1
          FixedCols = 0
          RowCount = 2
          TabOrder = 3
          OnDblClick = StringGrid1DblClick
          RowHeights = (
            24
            24)
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Sepetim'
        ImageIndex = 1
        object Label8: TLabel
          Left = 216
          Top = 328
          Width = 78
          Height = 16
          Caption = 'Toplam Tutar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 16
          Top = 20
          Width = 64
          Height = 16
          Caption = 'Sipari'#351' ID :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 96
          Top = 20
          Width = 41
          Height = 13
          Caption = 'siparisID'
        end
        object btnSepetimSepettenKaldir: TButton
          Left = 480
          Top = 45
          Width = 83
          Height = 41
          Caption = 'Sepetten Kald'#305'r'
          TabOrder = 0
          OnClick = btnSepetimSepettenKaldirClick
        end
        object StringGrid2: TStringGrid
          Left = 16
          Top = 45
          Width = 442
          Height = 253
          ColCount = 1
          FixedCols = 0
          RowCount = 2
          TabOrder = 1
          OnDblClick = StringGrid2DblClick
          RowHeights = (
            24
            24)
        end
        object btnSepetimSepetiOnayla: TButton
          Left = 480
          Top = 103
          Width = 81
          Height = 41
          Caption = 'Sepeti Onayla'
          TabOrder = 2
          OnClick = btnSepetimSepetiOnaylaClick
        end
        object btnToplamTutarHesapla: TButton
          Left = 16
          Top = 312
          Width = 177
          Height = 41
          Caption = 'Toplam Tutar Hesapla'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = btnToplamTutarHesaplaClick
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Sipari'#351' Durumum'
        ImageIndex = 2
        object Label15: TLabel
          Left = 16
          Top = 304
          Width = 166
          Height = 13
          Caption = 'Sipari'#351'iniz '#304'le '#304'lgili Detayl'#305' Bilgi '#304#231'in :'
        end
        object Label16: TLabel
          Left = 208
          Top = 304
          Width = 83
          Height = 13
          Caption = '+09 543 433 333'
        end
        object StringGrid3: TStringGrid
          Left = 16
          Top = 48
          Width = 521
          Height = 250
          ColCount = 1
          FixedCols = 0
          RowCount = 2
          TabOrder = 0
        end
      end
      object TabSheet4: TTabSheet
        Caption = #214'deme Durumum'
        ImageIndex = 3
        object Label1: TLabel
          Left = 16
          Top = 27
          Width = 457
          Height = 14
          Caption = 
            #214'deme Yapmak '#304'stedi'#287'iniz Sipari'#351'inizi Se'#231'erek '#214'deme '#304#351'lemizini G' +
            'er'#231'ekle'#351'tirebilirsiniz.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object StringGrid4: TStringGrid
          Left = 16
          Top = 72
          Width = 401
          Height = 249
          ColCount = 1
          FixedCols = 0
          RowCount = 2
          TabOrder = 0
          OnDblClick = StringGrid4DblClick
        end
        object btnOdemeYapmayaGecis: TButton
          Left = 439
          Top = 72
          Width = 97
          Height = 40
          Caption = #214'deme Yap'
          TabOrder = 1
          OnClick = btnOdemeYapmayaGecisClick
        end
      end
      object TabSheet5: TTabSheet
        Caption = #214'deme Ekran'#305
        ImageIndex = 4
        object Label19: TLabel
          Left = 16
          Top = 228
          Width = 74
          Height = 13
          Caption = 'Kart Numaras'#305' :'
        end
        object Label20: TLabel
          Left = 16
          Top = 268
          Width = 101
          Height = 13
          Caption = 'Kart '#220'zerindeki '#304'sim :'
        end
        object Label21: TLabel
          Left = 16
          Top = 308
          Width = 74
          Height = 13
          Caption = 'G'#252'venlik Kodu :'
        end
        object btnOdemeyiGerceklestir: TButton
          Left = 384
          Top = 348
          Width = 153
          Height = 41
          Caption = #214'demeyi Gercekle'#351'tir'
          TabOrder = 0
          OnClick = btnOdemeyiGerceklestirClick
        end
        object Edit1: TEdit
          Left = 168
          Top = 225
          Width = 177
          Height = 21
          TabOrder = 1
        end
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 579
          Height = 193
          Align = alTop
          BorderStyle = bsSingle
          TabOrder = 2
          object TLabel
            Left = 14
            Top = 22
            Width = 175
            Height = 16
            Caption = #214'demesi Yap'#305'lacak Sipari'#351'ID : '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label18: TLabel
            Left = 14
            Top = 98
            Width = 87
            Height = 16
            Caption = 'Toplam Tutar :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label17: TLabel
            Left = 310
            Top = 98
            Width = 74
            Height = 16
            Caption = 'Toplam utar '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label14: TLabel
            Left = 310
            Top = 138
            Width = 69
            Height = 16
            Caption = 'odemetutari'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label13: TLabel
            Left = 14
            Top = 140
            Width = 98
            Height = 16
            Caption = #214'DEME TUTARI :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label12: TLabel
            Left = 310
            Top = 52
            Width = 58
            Height = 16
            Caption = 'Erken/Ge'#231
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label11: TLabel
            Left = 14
            Top = 60
            Width = 205
            Height = 16
            Caption = #214'deme Erken/ Ge'#231' Gelme Durumu :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label10: TLabel
            Left = 310
            Top = 16
            Width = 49
            Height = 16
            Caption = 'siparisID'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
        end
        object Edit2: TEdit
          Left = 168
          Top = 265
          Width = 177
          Height = 21
          TabOrder = 3
        end
        object Edit3: TEdit
          Left = 168
          Top = 305
          Width = 177
          Height = 21
          TabOrder = 4
        end
      end
    end
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = DataModule1.QUrunListesi
    ScopeMappings = <>
    Left = 72
    Top = 408
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 220
    Top = 21
    object LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      GridControl = StringGrid1
      Columns = <>
    end
    object LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      GridControl = StringGrid2
      Columns = <>
    end
    object LinkGridToDataSourceBindSourceDB3: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = BindSourceDB3
      GridControl = StringGrid3
      Columns = <>
    end
    object LinkGridToDataSourceBindSourceDB4: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = BindSourceDB4
      GridControl = StringGrid4
      Columns = <>
    end
  end
  object BindSourceDB2: TBindSourceDB
    DataSet = DataModule1.QSepetim
    ScopeMappings = <>
    Left = 8
    Top = 464
  end
  object BindSourceDB3: TBindSourceDB
    DataSet = DataModule1.QSiparisDurumum
    ScopeMappings = <>
    Left = 16
    Top = 408
  end
  object BindSourceDB4: TBindSourceDB
    DataSet = DataModule1.QOdemeDurumum
    ScopeMappings = <>
    Left = 72
    Top = 464
  end
end
