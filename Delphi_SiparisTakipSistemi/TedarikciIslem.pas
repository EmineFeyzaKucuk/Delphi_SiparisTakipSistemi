unit TedarikciIslem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls,
  Data.DB, Vcl.NumberBox, Vcl.Grids, Vcl.DBGrids, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Vcl.Bind.Grid, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,System.DateUtils;

type
  TForm3 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    btnSiparisOlustur: TButton;
    btnSiparisDurumum: TButton;
    btnOdemeDurumum: TButton;
    NumberBox1: TNumberBox;
    Label2: TLabel;
    btnSiparisOlusturSepeteEkle: TButton;
    btnSiparisOlusturSepeteGit: TButton;
    btnSepetim: TButton;
    btnSepetimSepettenKaldir: TButton;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    StringGrid1: TStringGrid;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    StringGrid2: TStringGrid;
    BindSourceDB2: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    btnSepetimSepetiOnayla: TButton;
    StringGrid3: TStringGrid;
    BindSourceDB3: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB3: TLinkGridToDataSource;
    StringGrid4: TStringGrid;
    btnCikisYap: TButton;
    Label8: TLabel;
    btnToplamTutarHesapla: TButton;
    Label7: TLabel;
    Label9: TLabel;
    btnOdemeYapmayaGecis: TButton;
    TabSheet5: TTabSheet;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    btnOdemeyiGerceklestir: TButton;
    Label15: TLabel;
    Label16: TLabel;
    BindSourceDB4: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB4: TLinkGridToDataSource;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Edit1: TEdit;
    Panel4: TPanel;
    Edit2: TEdit;
    Edit3: TEdit;

    procedure FormActivate(Sender: TObject);
    procedure btnSiparisOlusturClick(Sender: TObject);
    procedure btnSepetimClick(Sender: TObject);
    procedure btnSiparisDurumumClick(Sender: TObject);
    procedure btnOdemeDurumumClick(Sender: TObject);
    procedure StringGrid1DblClick(Sender: TObject);
    procedure btnSiparisOlusturSepeteGitClick(Sender: TObject);
    procedure btnSiparisOlusturSepeteEkleClick(Sender: TObject);
    procedure btnSepetimGuncelleClick(Sender: TObject);
    procedure StringGrid2DblClick(Sender: TObject);
    procedure btnSepetimSepettenKaldirClick(Sender: TObject);
    procedure btnSepetimSepetiOnaylaClick(Sender: TObject);
    procedure btnSiparisDurumumGuncelleClick(Sender: TObject);
    procedure btnOdemeDurumumGuncelleClick(Sender: TObject);
    procedure btnToplamTutarHesaplaClick(Sender: TObject);
    procedure btnOdemeYapmayaGecisClick(Sender: TObject);
    procedure StringGrid4DblClick(Sender: TObject);
    procedure btnOdemeyiGerceklestirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     KisiID : integer;
     KisiAdSoyad : string;
     SeciliUrunID : integer;
     siparisID : integer;
     GuncellenecekUrun:integer;
     ToplamTutar : integer;
     YeniStok :integer;
     StokBilgisi: integer;
     KaldirilanUrunStok :integer;
     KaldirmaUrunID :integer;//Ürün kaldýrýlýrken seçilen ürün id yi alma
     OdemeSeciliSiparisID:integer;
     SonOdemeTarihi: TDate ;
     KasadakiPara :real;
     OdenecekTutar :real;

  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses dmTedarikci, TedarikciGiris;



procedure TForm3.btnOdemeDurumumClick(Sender: TObject);
begin
 PageControl1.ActivePageIndex := 3;
  DataModule1.QOdemeDurumum.Params.ParamByName('PKisiID').Value := KisiID;
  DataModule1.QOdemeDurumum.Open;
  DataModule1.QOdemeDurumum.Refresh;
end;

procedure TForm3.btnOdemeDurumumGuncelleClick(Sender: TObject);
begin
//
end;

procedure TForm3.btnOdemeYapmayaGecisClick(Sender: TObject);
var
Tarih1 : TDate;
Tarih2: Tdate ;
Sayi : integer;
GecikenGun:integer;
ErkenGelenGun:integer;
CezaOdulYuzdesi: real;
fiyat : integer;
adet : integer;
UrunTutar : integer;
ToplamTutar: integer;
HesaplananCezaOdulDurum: real;
begin
   ToplamTutar := 0;
   DataModule1.QUrunFiyatAl.params.parambyname('PSiparisID').Value := OdemeSeciliSiparisID;
   DataModule1.QUrunAdetAl.params.parambyname('PSiparisID').Value := OdemeSeciliSiparisID;
   DataModule1.QUrunFiyatAl.Open;
   DataModule1.QUrunFiyatAl.First;
    while not datamodule1.QUrunFiyatAl.eof do
    begin
         DataModule1.QUrunAdetAl.Open;
            while not datamodule1.QUrunAdetAl.eof do
            begin
             fiyat := DataModule1.QUrunFiyatAl.fieldbyname('UrunFiyat').AsInteger;
             adet := DataModule1.QUrunAdetAl.fieldbyname('UrunAdet').AsInteger;
             uruntutar := fiyat * adet;
              ToplamTutar := ToplamTutar + urunTutar;
              datamodule1.QUrunAdetAl.Next;
            datamodule1.QUrunFiyatAl.Next;
            end;
           fiyat := 0;
           adet := 0 ;
           urunTutar := 0;
    end;
    DataModule1.QUrunFiyatAl.Close;
    DataModule1.QUrunAdetAl.Close;
    PageControl1.ActivePageIndex := 4;
    label10.Caption := OdemeSeciliSiparisID.ToString;
   // SonOdemeTarihi
Tarih1 := (SonOdemetarihi); // Ýlk tarih deðer
Tarih2 := (date); // Ýkinci tarih deðer
Sayi := DaysBetween(Tarih1, Tarih2); // Aralarýnda kaç gün var
  label17.Caption := toplamtutar.ToString;
if Sayi = 0 then
begin
  Label12.Caption := 'Ödeme Günü';
  label14.Caption  := floatToStr(ToplamTutar);
end
else
begin
     if Sayi > 10 then
     begin

     GecikenGun:= Sayi;
     Label12.Caption := GecikenGun.ToString + ' ' + 'Gün Geciktirilmiþ Ödeme';
     CezaOdulYuzdesi :=  GecikenGun  * 0.2;
     HesaplananCezaOdulDurum := ToplamTutar * CezaOdulYuzdesi /100  ;
     OdenecekTutar := ToplamTutar + HesaplananCezaOdulDurum;
     label14.Caption := floatToStr(OdenecekTutar);
     end
     else
     begin
       ErkenGelenGun := sayi;
       Label12.Caption :=   ErkenGelenGun.ToString+ ' ' + 'Gün Erken Ödeme';
       CezaOdulYuzdesi := ErkenGelenGun * 0.2;
       HesaplananCezaOdulDurum :=  ToplamTutar * CezaOdulYuzdesi /100  ;
       OdenecekTutar := ToplamTutar - HesaplananCezaOdulDurum ;
       label14.Caption := floatToStr(OdenecekTutar);

     end;
end;
end;

procedure TForm3.btnOdemeyiGerceklestirClick(Sender: TObject);
var
KasaYeniTutar : real  ;
begin
 //Kasaya Odeme Eklenmesi
   DataModule1.QKasadakiPara.Open;
  if DataModule1.QKasadakiPara.recordcount > 0 then
  begin
    KasadakiPara := DataModule1.QKasadakiPara.FieldByName('KasadakiPara').Value;
  end;
  DataModule1.QKasadakiPara.Close;

  KasaYeniTutar := OdenecekTutar + KasadakiPara;
  DataModule1.QKasaOdemeAlma.Params.ParamByName('POdemeParasi').Value:= KasaYeniTutar;
  DataModule1.QKasaOdemeAlma.ExecSQL;
  DataModule1.QKasaOdemeAlma.Close;
  //Kasa detay ekleme

  DataModule1.QKasaDetay.Params.ParamByName('POdenecekTutar').Value := Odenecektutar;
  DataModule1.QKasaDetay.ExecSQL;
  DataModule1.QKasaDetay.Close;
  //Sipariþin Odeme Durumunu Guncelleme
   DataModule1.QSiparisOdemeDurumIDGuncelleme.parambyname('PSiparisID').value :=  label10.Caption;
   DataModule1.QSiparisOdemeDurumIDGuncelleme.ExecSQL;
  DataModule1.QSiparisOdemeDurumIDGuncelleme.Close;
end;

procedure TForm3.btnSepetimClick(Sender: TObject);
begin
    PageControl1.ActivePageIndex := 1;
end;

procedure TForm3.btnSepetimGuncelleClick(Sender: TObject);
begin
//Sepette Urun Adeti Güncellemek istediðinde Stok Adetini Kontrol etme
end;


procedure TForm3.btnSepetimSepetiOnaylaClick(Sender: TObject);
begin
 DataModule1.QSepetiOnayla.Params.ParamByName('PSiparisID').Value := SiparisID;
  DataModule1.QSepetiOnayla.Params.ParamByName('POnayBekleyenSiparis').Value := 2;
 DataModule1.QSepetiOnayla.ExecSQL;
DataModule1.QSepetiOnayla.Close;
 DataModule1.QSepetim.Refresh;
end;

procedure TForm3.btnSepetimSepettenKaldirClick(Sender: TObject);
var
SepettekiUrunAdet  :integer;

begin
 SepettekiUrunAdet:= YeniStok + KaldirilanUrunStok   ;
//Stoða geri alma kaldýrýlýan ürün adeti
  DataModule1.QKaldirilanStoguGeriEkleme.Params.ParamByName('PUrunID').Value:= KaldirmaUrunID;
  DataModule1.QKaldirilanStoguGeriEkleme.Params.ParamByName('PStok').Value:= SepettekiUrunAdet;
  DataModule1.QKaldirilanStoguGeriEkleme.ExecSQL;
  DataModule1.QKaldirilanStoguGeriEkleme.Close;
  DataModule1.QUrunListesi.Refresh;

  //Sepetteki Ürünü Silme
  DataModule1.QSepetim.Refresh;
 DataModule1.QSiparisDetayKaldir.Params.ParamByName('PGuncellenecekUrun').Value:= GuncellenecekUrun;
  DataModule1.QSiparisDetayKaldir.ExecSQL;
  DataModule1.QSiparisDetayKaldir.Close;
  DataModule1.QSepetim.Open();
  DataModule1.QSepetim.Refresh;
end;

procedure TForm3.btnSiparisDurumumClick(Sender: TObject);
begin
 PageControl1.ActivePageIndex := 2;
  DataModule1.QSiparisDurumum.Params.ParamByName('PKisiID').Value := KisiID;
 DataModule1.QSiparisDurumum.Open;
  DataModule1.QSiparisDurumum.Refresh;
end;

procedure TForm3.btnSiparisDurumumGuncelleClick(Sender: TObject);
begin
//
end;



procedure TForm3.btnSiparisOlusturClick(Sender: TObject);
var
odemeTarihiID:integer;
begin
//Tarih tablosu
  DataModule1.QOdemeTarih.Params.ParamByName('PSonOdemeTarih').Value := DateToStr(Date +10 ) ;
  DataModule1.QOdemeTarih.Params.ParamByName('PYapilanOdemeTarih').Value := DateToStr(Date -2 ) ;
  DataModule1.QOdemeTarih.ExecSQL;
  DataModule1.QOdemeTarih.Close;
 //OdemeTarihiID' si Alma
    DataModule1.QOdemeTarihiIDAl.Open;
  if DataModule1.QOdemeTarihiIDAl.recordcount > 0 then
  begin
    OdemeTarihiID := DataModule1.QOdemeTarihiIDAl.FieldByName('OdemeTarihiID').Value;
  end;
  DataModule1.QOdemeTarihiIDAl.Close;

 //Siparis Tablosu insert komutu
  PageControl1.ActivePageIndex := 0;
  DataModule1.QUrunListesi.open;
  DataModule1.QSiparis.Params.ParamByName('PKisiID').Value := KisiID;
  DataModule1.QSiparis.Params.ParamByName('PSiparisDurumID').Value := 3 ;
  DataModule1.QSiparis.Params.ParamByName('POdemeDurumID').Value := 2;
  DataModule1.QSiparis.Params.ParamByName('POdemeTarihID').Value := OdemeTarihiID;
  DataModule1.QSiparis.ExecSQL;
  DataModule1.QSiparis.Close;
end;

procedure TForm3.btnSiparisOlusturSepeteEkleClick(Sender: TObject);
var
UrunAdeti :integer;

begin
  // SiparisID' yi aldýk
  DataModule1.QSiparisIDAl.Open;
  if DataModule1.QSiparisIdAl.recordcount > 0 then
  begin
    siparisID := DataModule1.QSiparisIDAl.FieldByName('SiparisID').Value;
  end;
  DataModule1.QSiparisIDAl.Close;

  if StokBilgisi < numberbox1.Value then
  begin
  showmessage('Stok Miktarý Üstünde Ürün Talebinde bulundunuz. Ürün Sepete Eklenmedi')
  end
  else
  begin
  //---SiparisDetay Ekleme Kodu--------------------------------------------
  DataModule1.QSiparisDetay.Params.ParamByName('PSiparisID').Value := SiparisID;
  DataModule1.QSiparisDetay.Params.ParamByName('PUrunID').Value := SeciliUrunID ;
  DataModule1.QSiparisDetay.Params.ParamByName('PUrunAdet').Value := numberbox1.Value;
  DataModule1.QSiparisDetay.ExecSQL;
  DataModule1.QSiparisDetay.Close;
  UrunAdeti := numberbox1.ValueInt;
  YeniStok := StokBilgisi - UrunAdeti  ;
//YeniStok Güncelleme
  DataModule1.QStokGuncelleme.Params.ParamByName('PStok').Value := YeniStok;
  DataModule1.QStokGuncelleme.Params.ParamByName('PUrunID').Value := SeciliUrunID ;
  DataModule1.QStokGuncelleme.ExecSQL;
  DataModule1.QStokGuncelleme.Close;
  DataModule1.QUrunListesi.Refresh;
  end;
  // DataModule1.QSepetim.Refresh;
end;

procedure TForm3.btnSiparisOlusturSepeteGitClick(Sender: TObject);

begin
 DataModule1.QSepetim.Params.ParamByName('PSiparisID').Value := SiparisID;
 DataModule1.QSepetim.Open;
 PageControl1.ActivePageIndex := 1;
 label9.Caption := SiparisID.ToString;

end;

procedure TForm3.btnToplamTutarHesaplaClick(Sender: TObject);
var
fiyat : integer;
adet : integer;
UrunTutar : integer;
ToplamTutar: integer;
begin
   ToplamTutar := 0;
   DataModule1.QUrunFiyatAl.params.parambyname('PSiparisID').Value := SiparisID;
   DataModule1.QUrunAdetAl.params.parambyname('PSiparisID').Value := SiparisID;
    DataModule1.QUrunFiyatAl.Open;
    DataModule1.QUrunFiyatAl.First;
    while not datamodule1.QUrunFiyatAl.eof do
    begin
         DataModule1.QUrunAdetAl.Open;
            while not datamodule1.QUrunAdetAl.eof do
            begin
             fiyat := DataModule1.QUrunFiyatAl.fieldbyname('UrunFiyat').AsInteger;
             adet := DataModule1.QUrunAdetAl.fieldbyname('UrunAdet').AsInteger;
             uruntutar := fiyat * adet;
              ToplamTutar := ToplamTutar + urunTutar;
                  datamodule1.QUrunAdetAl.Next;
            datamodule1.QUrunFiyatAl.Next;
            end;
           fiyat := 0;
           adet := 0 ;
           urunTutar := 0;
    end;

      label8.caption :='Sepet Toplamý :' +  ToplamTutar.ToString  +' '+ 'TL' ;
      DataModule1.QUrunFiyatAl.Close;
      DataModule1.QUrunAdetAl.Close;

end;

procedure TForm3.FormActivate(Sender: TObject);
begin
  KisiAdSoyad := TedarikciGiris.Form5.Edit1.Text;
KisiID := TedarikciGiris.Form5.KisiID;
Label5.Caption := KisiAdSoyad;
Label6.Caption := (KisiID).ToString;
end;



procedure TForm3.StringGrid1DblClick(Sender: TObject);
begin
 SeciliUrunID := DataModule1.QUrunListesi.FieldByName('UrunID').Value;
  StokBilgisi := DataModule1.QUrunListesi.FieldByName('Stok').Value;
end;

procedure TForm3.StringGrid2DblClick(Sender: TObject);
begin
    GuncellenecekUrun := DataModule1.QSepetim.FieldByName('SiparisDetayID').Value;
    KaldirilanUrunStok := DataModule1.QSepetim.FieldByName('UrunAdet').Value;
    KaldirmaUrunID:= DataModule1.QSepetim.FieldByName('UrunID').Value;
end;

procedure TForm3.StringGrid4DblClick(Sender: TObject);
begin
    OdemeSeciliSiparisID:= DataModule1.QOdemeDurumum.FieldByName('SiparisID').Value;
    SonOdemeTarihi   :=  DataModule1.QOdemeDurumum.FieldByName('SonOdemeTarih').Value;
end;

end.
