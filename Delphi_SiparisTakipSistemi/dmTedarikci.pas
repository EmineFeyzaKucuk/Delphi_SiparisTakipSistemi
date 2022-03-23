unit dmTedarikci;

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
  TDataModule1 = class(TDataModule)
    FDConnection1: TFDConnection;
    QKisiBilgisi: TFDQuery;
    QUrunListesi: TFDQuery;
    QSiparis: TFDQuery;
    QSiparisDetay: TFDQuery;
    QSiparisIDAl: TFDQuery;
    QSepetim: TFDQuery;
    QSiparisDetayGuncelle: TFDQuery;
    QSiparisDetayKaldir: TFDQuery;
    QSepetiOnayla: TFDQuery;
    QSiparisDurumum: TFDQuery;
    QOdemeDurumum: TFDQuery;
    QToplamTutar: TFDQuery;
    QUrunAdetAl: TFDQuery;
    QUrunFiyatAl: TFDQuery;
    QUrunFiyatAlUrunFiyat: TIntegerField;
    QToplamTutarsumuUrunFiyat: TWideStringField;
    QUrunAdetAlUrunAdet: TIntegerField;
    QOdemeTarih: TFDQuery;
    QStokGuncelleme: TFDQuery;
    QKaldirilanStoguGeriEkleme: TFDQuery;
    QOdemeTarihiIDAl: TFDQuery;
    QKasaOdemeAlma: TFDQuery;
    QKasaDetay: TFDQuery;
    QKasadakiPara: TFDQuery;
    QSiparisOdemeDurumIDGuncelleme: TFDQuery;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}




end.
