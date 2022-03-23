object DataModule2: TDataModule2
  OldCreateOrder = False
  Height = 471
  Width = 538
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=D:\Belgeler\Embarcadero\Studio\Projects\SistemAnaliziPr' +
        'oje\Win32\SistemAnaliziSiparisUyg.db'
      'DriverID=SQLite')
    Left = 48
    Top = 24
  end
  object QYonetici: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from Yonetici')
    Left = 40
    Top = 88
  end
  object QHammaddeEkle: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'insert into Hammadde(HammaddeAdi, '
      'HammaddeStok,UrunID)'
      'values(:PHammaddeAdi, :PHammaddeStok, :PUrunID)')
    Left = 48
    Top = 160
    ParamData = <
      item
        Name = 'PHAMMADDEADI'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PHAMMADDESTOK'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PURUNID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object TUrunCombo: TFDTable
    IndexFieldNames = 'UrunID'
    Connection = FDConnection1
    TableName = 'Urunler'
    Left = 40
    Top = 232
    object TUrunComboUrunID: TFDAutoIncField
      FieldName = 'UrunID'
      Origin = 'UrunID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TUrunComboUrunAdi: TStringField
      FieldName = 'UrunAdi'
      Origin = 'UrunAdi'
      Size = 200
    end
    object TUrunComboUrunFiyat: TIntegerField
      FieldName = 'UrunFiyat'
      Origin = 'UrunFiyat'
    end
  end
  object QHammaddeGoruntule: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select h.HammaddeID, h.HammaddeAdi, h.HammaddeStok,'
      'u.UrunAdi as Kullan'#305'ld'#305'g'#305'Urun '
      'from Urunler as u'
      'join Hammadde as h'
      'on u.UrunID = h.UrunID')
    Left = 40
    Top = 296
    object QHammaddeGoruntuleHammaddeID: TFDAutoIncField
      FieldName = 'HammaddeID'
      Origin = 'HammaddeID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QHammaddeGoruntuleHammaddeAdi: TStringField
      FieldName = 'HammaddeAdi'
      Origin = 'HammaddeAdi'
      Size = 100
    end
    object QHammaddeGoruntuleHammaddeStok: TIntegerField
      FieldName = 'HammaddeStok'
      Origin = 'HammaddeStok'
    end
    object QHammaddeGoruntuleKullanıldıgıUrun: TStringField
      FieldName = 'Kullan'#305'ld'#305'g'#305'Urun'
      Origin = '"Kullan'#305'ld'#305'g'#305'Urun"'
      Size = 200
    end
  end
  object QHammaddeGuncelle: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'update Hammadde'
      'set HammaddeStok = :PHammaddeStok'
      'where HammaddeID = :PHammaddeID')
    Left = 40
    Top = 360
    ParamData = <
      item
        Name = 'PHAMMADDESTOK'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PHAMMADDEID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QHammaddeKaldir: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Delete from Hammadde '
      'where HammaddeID = :PHammaddeID')
    Left = 144
    Top = 24
    ParamData = <
      item
        Name = 'PHAMMADDEID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QUrunEkle: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'insert into Urunler(UrunAdi, UrunFiyat,Stok)'
      'values (:PUrunAdi, :PUrunFiyat, :PStok)')
    Left = 128
    Top = 88
    ParamData = <
      item
        Name = 'PURUNADI'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PURUNFIYAT'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PSTOK'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QUrunGoruntule: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from Urunler')
    Left = 136
    Top = 160
  end
  object QUrunFiyatGuncelle: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'update Urunler '
      'set UrunFiyat = :PUrunFiyat, Stok = :PStok'
      'where UrunID = :PUrunID')
    Left = 152
    Top = 232
    ParamData = <
      item
        Name = 'PURUNFIYAT'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PSTOK'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PURUNID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QUrunKaldir: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Delete from Urunler'
      'where UrunID = :PUrunID')
    Left = 144
    Top = 296
    ParamData = <
      item
        Name = 'PURUNID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QSiparisDurum: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select s.SiparisID,s.KisiID, sd.SiparisDurumm'
      'from Siparis as s'
      'join SiparisDurum as sd'
      'on s.SiparisDurumID = sd.SiparisDurumID'
      '')
    Left = 248
    Top = 24
  end
  object TSiparisDurum: TFDTable
    IndexFieldNames = 'SiparisDurumID'
    Connection = FDConnection1
    TableName = 'SiparisDurum'
    Left = 264
    Top = 96
    object TSiparisDurumSiparisDurumID: TFDAutoIncField
      FieldName = 'SiparisDurumID'
      Origin = 'SiparisDurumID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TSiparisDurumSiparisDurumm: TStringField
      FieldName = 'SiparisDurumm'
      Origin = 'SiparisDurumm'
      Size = 200
    end
  end
  object QSiparisDurumGuncelle: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'update Siparis'
      'set SiparisDurumID = :PSiparisDurumID'
      'where SiparisID = :PSiparisID')
    Left = 248
    Top = 168
    ParamData = <
      item
        Name = 'PSIPARISDURUMID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PSIPARISID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QTarihKarsilastirma: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select  s.SiparisID , kb.email,s.KisiID, ot.SonOdemeTarih from O' +
        'demeTarihi ot'
      'join Siparis as s'
      'on ot.OdemeTarihiID = s.OdemeTarihID'
      'join KisiBilgisi as kb'
      'on s.KisiID = kb.KisiID'
      'where SonOdemeTarih between :PTarih and :PTarih2')
    Left = 256
    Top = 240
    ParamData = <
      item
        Name = 'PTARIH'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PTARIH2'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
  end
  object QOdemesiGecikenler: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select  s.SiparisID,kb.email ,s.KisiID, ot.SonOdemeTarih from Od' +
        'emeTarihi ot'
      'join Siparis as s'
      'on ot.OdemeTarihiID = s.OdemeTarihID'
      'join KisiBilgisi as kb'
      'on s.KisiID = kb.KisiID'
      'where SonOdemeTarih < :PTarih')
    Left = 248
    Top = 320
    ParamData = <
      item
        Name = 'PTARIH'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
  end
  object TYapilanIslem: TFDTable
    IndexFieldNames = 'YapilanIslemID'
    Connection = FDConnection1
    TableName = 'YapilanIslem'
    Left = 256
    Top = 392
    object TYapilanIslemYapilanIslemID: TFDAutoIncField
      FieldName = 'YapilanIslemID'
      Origin = 'YapilanIslemID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TYapilanIslemYapilanIslemAdi: TStringField
      FieldName = 'YapilanIslemAdi'
      Origin = 'YapilanIslemAdi'
      Size = 32767
    end
  end
  object QKasadakiPara: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from Kasa order by KasadakiPara desc limit 1')
    Left = 344
    Top = 24
    object QKasadakiParaKasaID: TFDAutoIncField
      FieldName = 'KasaID'
      Origin = 'KasaID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QKasadakiParaKasadakiPara: TFloatField
      FieldName = 'KasadakiPara'
      Origin = 'KasadakiPara'
    end
    object QKasadakiParaYoneticiID: TIntegerField
      FieldName = 'YoneticiID'
      Origin = 'YoneticiID'
    end
  end
  object QKasaDetay: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'insert into KasaDetay(KasaId,YapilanIslemID,IslemTutari)'
      'values(1, :PYapilanIslemID, :PIslemTutari)')
    Left = 344
    Top = 96
    ParamData = <
      item
        Name = 'PYAPILANISLEMID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PISLEMTUTARI'
        DataType = ftFloat
        ParamType = ptInput
        Value = Null
      end>
  end
  object QIslemGoruntuleme: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select yi.YapilanIslemAdi,'
      'kd.IslemTutari'
      'from KasaDetay as kd'
      'join YapilanIslem as yi'
      'on kd.YapilanIslemID = yi.YapilanIslemID ')
    Left = 336
    Top = 168
  end
  object QKasadakiParaGuncelleme: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Update Kasa'
      'set KasadakiPara = :PKasadakiPara'
      'where KasaID = 1')
    Left = 424
    Top = 328
    ParamData = <
      item
        Name = 'PKASADAKIPARA'
        DataType = ftFloat
        ParamType = ptInput
        Value = Null
      end>
  end
  object QKasaDetay2: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'insert into KasaDetay(KasaId,YapilanIslemID,IslemTutari)'
      'values(1, :PYapilanIslemID, :PIslemTutari)')
    Left = 424
    Top = 96
    ParamData = <
      item
        Name = 'PYAPILANISLEMID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PISLEMTUTARI'
        DataType = ftFloat
        ParamType = ptInput
        Value = Null
      end>
  end
end
