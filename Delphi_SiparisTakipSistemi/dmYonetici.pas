unit dmYonetici;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDataModule2 = class(TDataModule)
    FDConnection1: TFDConnection;
    QYonetici: TFDQuery;
    QHammaddeEkle: TFDQuery;
    TUrunCombo: TFDTable;
    TUrunComboUrunID: TFDAutoIncField;
    TUrunComboUrunAdi: TStringField;
    TUrunComboUrunFiyat: TIntegerField;
    QHammaddeGoruntule: TFDQuery;
    QHammaddeGuncelle: TFDQuery;
    QHammaddeGoruntuleHammaddeID: TFDAutoIncField;
    QHammaddeGoruntuleHammaddeAdi: TStringField;
    QHammaddeGoruntuleHammaddeStok: TIntegerField;
    QHammaddeGoruntuleKullanýldýgýUrun: TStringField;
    QHammaddeKaldir: TFDQuery;
    QUrunEkle: TFDQuery;
    QUrunGoruntule: TFDQuery;
    QUrunFiyatGuncelle: TFDQuery;
    QUrunKaldir: TFDQuery;
    QSiparisDurum: TFDQuery;
    TSiparisDurum: TFDTable;
    TSiparisDurumSiparisDurumID: TFDAutoIncField;
    TSiparisDurumSiparisDurumm: TStringField;
    QSiparisDurumGuncelle: TFDQuery;
    QTarihKarsilastirma: TFDQuery;
    QOdemesiGecikenler: TFDQuery;
    TYapilanIslem: TFDTable;
    TYapilanIslemYapilanIslemID: TFDAutoIncField;
    TYapilanIslemYapilanIslemAdi: TStringField;
    QKasadakiPara: TFDQuery;
    QKasadakiParaKasaID: TFDAutoIncField;
    QKasadakiParaKasadakiPara: TFloatField;
    QKasadakiParaYoneticiID: TIntegerField;
    QKasaDetay: TFDQuery;
    QIslemGoruntuleme: TFDQuery;
    QKasadakiParaGuncelleme: TFDQuery;
    QKasaDetay2: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
