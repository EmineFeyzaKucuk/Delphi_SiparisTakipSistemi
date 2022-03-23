object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 489
  Width = 578
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=D:\Belgeler\Embarcadero\Studio\Projects\SistemAnaliziPr' +
        'oje\Win32\SistemAnaliziSiparisUyg.db'
      'DriverID=SQLite')
    Left = 32
    Top = 24
  end
  object QKisiBilgisi: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from KisiBilgisi')
    Left = 24
    Top = 88
  end
  object QUrunListesi: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from Urunler')
    Left = 24
    Top = 152
  end
  object QSiparis: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'insert into Siparis (KisiID , SiparisDurumID , OdemeDurumID,Odem' +
        'eTarihID)'
      
        'values (:PKisiID , :PSiparisDurumID , :POdemeDurumID, :POdemeTar' +
        'ihID) ')
    Left = 16
    Top = 280
    ParamData = <
      item
        Name = 'PKISIID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PSIPARISDURUMID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PODEMEDURUMID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PODEMETARIHID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QSiparisDetay: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'insert into SiparisDetay (SiparisID , UrunID, UrunAdet)'
      'values (:PSiparisID , :PUrunID , :PUrunAdet)')
    Left = 24
    Top = 208
    ParamData = <
      item
        Name = 'PSIPARISID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PURUNID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PURUNADET'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QSiparisIDAl: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from Siparis order by SiparisID desc limit 1')
    Left = 16
    Top = 344
  end
  object QSepetim: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select u.UrunID,u.UrunAdi,u.UrunFiyat, sd.UrunAdet,sd.SiparisDet' +
        'ayID from Urunler as u'
      'join SiparisDetay as sd'
      'on u.UrunID = sd.UrunID'
      'where sd.siparisID = :PSiparisID')
    Left = 112
    Top = 24
    ParamData = <
      item
        Name = 'PSIPARISID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QSiparisDetayGuncelle: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'update SiparisDetay set UrunAdet = :PUrunAdet'
      'where SiparisDetayID = :PGuncellenecekUrun')
    Left = 112
    Top = 88
    ParamData = <
      item
        Name = 'PURUNADET'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PGUNCELLENECEKURUN'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QSiparisDetayKaldir: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Delete from SiparisDetay '
      'where SiparisDetayID = :PGuncellenecekUrun')
    Left = 112
    Top = 144
    ParamData = <
      item
        Name = 'PGUNCELLENECEKURUN'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QSepetiOnayla: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'update Siparis set SiparisDurumID = :POnayBekleyenSiparis'
      'where SiparisID = :PSiparisID'
      '')
    Left = 104
    Top = 208
    ParamData = <
      item
        Name = 'PONAYBEKLEYENSIPARIS'
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
  object QSiparisDurumum: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select s.SiparisID, s.KisiID, sd.SiparisDurumm from Siparis as s'
      'join SiparisDurum as sd'
      'on s.SiparisDurumID = sd.SiparisDurumID'
      'where s.KisiID = :PKisiID')
    Left = 96
    Top = 280
    ParamData = <
      item
        Name = 'PKISIID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QOdemeDurumum: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select s.SiparisID, s.KisiID, od.OdemeDurumu,'
      ' ot.SonOdemeTarih, ot.OdemeTarihiID'
      'from Siparis as s'
      'join OdemeDurum as od'
      'on s.OdemeDurumID = od.OdemeDurumID'
      'join OdemeTarihi as ot'
      'on s.OdemeTarihID = ot.OdemeTarihiID'
      'where s.KisiID = :PKisiID')
    Left = 104
    Top = 344
    ParamData = <
      item
        Name = 'PKISIID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QToplamTutar: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select sum(u.UrunFiyat) from Urunler as u'
      'join SiparisDetay as sd'
      'on u.UrunID = sd.UrunID'
      'where sd.siparisID = :PSiparisID')
    Left = 208
    Top = 80
    ParamData = <
      item
        Name = 'PSIPARISID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QToplamTutarsumuUrunFiyat: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'sum(u.UrunFiyat)'
      Origin = '"sum(u.UrunFiyat)"'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
  end
  object QUrunAdetAl: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select sd.UrunAdet from Urunler as u'
      'join SiparisDetay as sd'
      'on u.UrunID = sd.UrunID'
      'where sd.siparisID = :PSiparisID')
    Left = 192
    Top = 24
    ParamData = <
      item
        Name = 'PSIPARISID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QUrunAdetAlUrunAdet: TIntegerField
      FieldName = 'UrunAdet'
      Origin = 'UrunAdet'
    end
  end
  object QUrunFiyatAl: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select u.UrunFiyat from Urunler as u'
      'join SiparisDetay as sd'
      'on u.UrunID = sd.UrunID'
      'where sd.siparisID = :PSiparisID')
    Left = 280
    Top = 24
    ParamData = <
      item
        Name = 'PSIPARISID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QUrunFiyatAlUrunFiyat: TIntegerField
      FieldName = 'UrunFiyat'
      Origin = 'UrunFiyat'
    end
  end
  object QOdemeTarih: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'insert into OdemeTarihi(SonOdemeTarih, YapilanOdemeTarih)'
      'values (:PSonOdemeTarih, :PYapilanOdemeTarih)')
    Left = 200
    Top = 144
    ParamData = <
      item
        Name = 'PSONODEMETARIH'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PYAPILANODEMETARIH'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
  end
  object QStokGuncelleme: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'update Urunler set Stok = :PStok'
      'where UrunID = :PUrunID')
    Left = 200
    Top = 208
    ParamData = <
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
  object QKaldirilanStoguGeriEkleme: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'update Urunler set Stok = :PStok'
      'where UrunID = :PUrunID')
    Left = 208
    Top = 280
    ParamData = <
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
  object QOdemeTarihiIDAl: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from OdemeTarihi order by OdemeTarihiID desc limit 1')
    Left = 200
    Top = 344
  end
  object QKasaOdemeAlma: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'update Kasa set KasadakiPara = :POdemeParasi'
      'where KasaID = 1')
    Left = 320
    Top = 96
    ParamData = <
      item
        Name = 'PODEMEPARASI'
        DataType = ftFloat
        ParamType = ptInput
        Value = Null
      end>
  end
  object QKasaDetay: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'insert into KasaDetay(KasaID, YapilanIslemID, IslemTutari)'
      'values (1,2,:POdenecekTutar)')
    Left = 312
    Top = 160
    ParamData = <
      item
        Name = 'PODENECEKTUTAR'
        DataType = ftFloat
        ParamType = ptInput
        Value = Null
      end>
  end
  object QKasadakiPara: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from Kasa '
      'where KasaId =1')
    Left = 376
    Top = 32
  end
  object QSiparisOdemeDurumIDGuncelleme: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'update Siparis'
      'set OdemeDurumID = 1'
      'where siparisID = :PSiparisID')
    Left = 336
    Top = 232
    ParamData = <
      item
        Name = 'PSIPARISID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
end
