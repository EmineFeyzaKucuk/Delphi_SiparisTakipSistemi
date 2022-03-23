unit YoneticiIslem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.NumberBox, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, Vcl.Bind.Grid,  System.DateUtils,
  Data.Bind.Grid;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    btnHammadde: TButton;
    btnTedarikciSiparis: TButton;
    btnOdemeDurumlari: TButton;
    btnKasa: TButton;
    TabSheet2: TTabSheet;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    btnHammaddeEkle: TButton;
    btnHammaddeGuncelle: TButton;
    btnHammaddeKaldir: TButton;
    ComboBox2: TComboBox;
    btnTedarikciSiparisGuncelle: TButton;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    Label4: TLabel;
    Label5: TLabel;
    ComboBox4: TComboBox;
    NumberBox1: TNumberBox;
    btnUrunler: TButton;
    TabSheet6: TTabSheet;
    Label6: TLabel;
    Label7: TLabel;
    Edit3: TEdit;
    NumberBox2: TNumberBox;
    btnUrunlerEkle: TButton;
    btnUrunlerGuncelle: TButton;
    btnUrunlerKaldir: TButton;
    btnKasaIslemiOnayla: TButton;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    btnCikisYap: TButton;
    DateTimePicker2: TDateTimePicker;
    Label12: TLabel;
    Label13: TLabel;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    BindSourceDB2: TBindSourceDB;
    NumberBox3: TNumberBox;
    LinkListControlToField1: TLinkListControlToField;
    StringGrid1: TStringGrid;
    BindSourceDB3: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB3: TLinkGridToDataSource;
    btnHammaddeTemizle: TButton;
    btnTemizle: TButton;
    StringGrid2: TStringGrid;
    BindSourceDB4: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB4: TLinkGridToDataSource;
    StringGrid3: TStringGrid;
    BindSourceDB5: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB5: TLinkGridToDataSource;
    BindSourceDB6: TBindSourceDB;
    LinkListControlToField2: TLinkListControlToField;
    Label16: TLabel;
    NumberBox4: TNumberBox;
    StringGrid4: TStringGrid;
    StringGrid5: TStringGrid;
    Label14: TLabel;
    Label15: TLabel;
    BindSourceDB7: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB7: TLinkGridToDataSource;
    BindSourceDB8: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB8: TLinkGridToDataSource;
    BindSourceDB9: TBindSourceDB;
    LinkListControlToField3: TLinkListControlToField;
    StringGrid6: TStringGrid;
    BindSourceDB10: TBindSourceDB;
    BindSourceDB11: TBindSourceDB;
    PageControl1 :TPageControl ;
    LinkGridToDataSourceBindSourceDB11: TLinkGridToDataSource;
    procedure btnHammaddeClick(Sender: TObject);
    procedure btnTedarikciSiparisClick(Sender: TObject);
    procedure btnOdemeDurumuClick(Sender: TObject);
    procedure btnOdemeDurumlariClick(Sender: TObject);
    procedure btnKasaClick(Sender: TObject);
    procedure btnUrunlerClick(Sender: TObject);
    procedure btnHammaddeEkleClick(Sender: TObject);
    function SeciliUrunID: integer;
    procedure btnHammaddeGuncelleClick(Sender: TObject);
    procedure StringGrid1DblClick(Sender: TObject);
    procedure btnHammaddeTemizleClick(Sender: TObject);
    procedure btnHammaddeKaldirClick(Sender: TObject);
    procedure btnUrunlerEkleClick(Sender: TObject);
    procedure btnUrunlerGuncelleClick(Sender: TObject);
    procedure StringGrid2DblClick(Sender: TObject);
    procedure btnTemizleClick(Sender: TObject);
    function SeciliSiparisID: integer;
    procedure btnUrunlerKaldirClick(Sender: TObject);
    procedure btnTedarikciSiparisGuncelleClick(Sender: TObject);
    procedure StringGrid3DblClick(Sender: TObject);
    function SeciliIslemId: integer;
    procedure btnKasaIslemiOnaylaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    GuncellenecekHammadde :integer;
    ComboSeciliUrunID : integer;
    TiklananUrunID : integer;
    TiklananSiparisID :integer;
    KasadakiPara :real;

  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses dmYonetici;

procedure TForm2.btnHammaddeClick(Sender: TObject);
begin
 PageControl1.ActivePageIndex := 0;
   DataModule2.TUrunCombo.close;
  DataModule2.TUrunCombo.open;
  DataModule2.QHammaddeGoruntule.open;
end;

procedure TForm2.btnHammaddeEkleClick(Sender: TObject);
begin
  ComboSeciliUrunID := SeciliUrunID;
  DataModule2.QHammaddeEkle.Params.ParamByName('PHammaddeAdi').Value := edit1.Text;
  DataModule2.QHammaddeEkle.Params.ParamByName('PHammaddeStok').Value := numberbox3.Value ;
  DataModule2.QHammaddeEkle.Params.ParamByName('PUrunID').Value := ComboSeciliUrunID ;
  DataModule2.QHammaddeEkle.ExecSQL;
  DataModule2.QHammaddeEkle.Close;
  DataModule2.QHammaddeGoruntule.Refresh;
    edit1.Text:= '';
    ComboSeciliUrunID := 0;
    numberbox3.Value:=0;
end;

procedure TForm2.btnHammaddeGuncelleClick(Sender: TObject);
begin
  DataModule2.QHammaddeGuncelle.Params.ParamByName('PHammaddeStok').Value := numberbox3.Value ;
  DataModule2.QHammaddeGuncelle.Params.ParamByName('PHammaddeID').Value := GuncellenecekHammadde;
  DataModule2.QHammaddeGuncelle.ExecSQL;
  DataModule2.QHammaddeGuncelle.Close;
  DataModule2.QHammaddeGoruntule.Refresh;

  if Numberbox3.value < 200  then
  begin
      showmessage(edit1.text + ' '+  ' Hammaddesi Ýçin Stok Yenilemesi Yapýlmalý');
  end;



end;

procedure TForm2.btnHammaddeKaldirClick(Sender: TObject);
begin
  DataModule2.QHammaddeKaldir.Params.ParamByName('PHammaddeID').Value := GuncellenecekHammadde;
  DataModule2.QHammaddeKaldir.ExecSQL;
  DataModule2.QHammaddeKaldir.Close;
  DataModule2.QHammaddeGoruntule.Refresh;
end;

procedure TForm2.btnHammaddeTemizleClick(Sender: TObject);
begin
numberbox3.Value := 0;
edit1.Text := '';
combobox1.Text:='';
end;

procedure TForm2.btnKasaClick(Sender: TObject);
var
KasaId : integer;
begin
  PageControl1.ActivePageIndex := 4;
  DataModule2.TYapilanIslem.open;
   DataModule2.QKasadakiPara.Open;
   DataModule2.QIslemGoruntuleme.open;
 //kasadaki para alma
  if DataModule2.QKasadakiPara.recordcount > 0 then
  begin
    KasadakiPara := DataModule2.QKasadakiPara.FieldByName('KasadakiPara').Value;
  end;
   DataModule2.QKasadakiPara.open;
 // DataModule2.QKasadakiPara.Close;
  Label9.Caption := floattostr(KasadakiPara);
end;

procedure TForm2.btnKasaIslemiOnaylaClick(Sender: TObject);
var
KasaYeni : real;
 ComboSeciliIslemID: integer;
begin
ComboSeciliIslemID := SeciliIslemID  ;
  if ComboSeciliIslemID = 2 then
  begin
  kasaYeni := kasadakipara  + Numberbox1.value ;
  DataModule2.QkasaDetay.Params.ParamByName('PYapilanIslemID').Value := ComboSeciliIslemID ;
  DataModule2.QkasaDetay.Params.ParamByName('PIslemTutari').Value := numberbox1.Value ;
  DataModule2.QkasaDetay.ExecSQL;
  DataModule2.QkasaDetay.Close;

  DataModule2.QKasadakiParaGuncelleme.parambyname('PKasadakiPara').value := Kasadakipara + numberbox1.value ;
  DataModule2.QKasadakiParaGuncelleme.ExecSQL;
  DataModule2.QKasadakiParaGuncelleme.Close;
  Label9.Caption := floattostr(KasaYeni);
 // DataModule2.QKasadakiPara.Refresh;
   Numberbox1.value := 0;
  end
  else
  begin
  kasaYeni :=  kasadakipara - Numberbox1.value  ;
  DataModule2.QkasaDetay2.Params.ParamByName('PYapilanIslemID').Value := ComboSeciliIslemID ;
  DataModule2.QkasaDetay2.Params.ParamByName('PIslemTutari').Value := numberbox1.Value ;
  DataModule2.QkasaDetay2.ExecSQL;
  DataModule2.QkasaDetay2.Close;

   DataModule2.QKasadakiParaGuncelleme.parambyname('PKasadakiPara').value := Kasadakipara - numberbox1.value ;
  DataModule2.QKasadakiParaGuncelleme.ExecSQL;
  DataModule2.QKasadakiParaGuncelleme.Close;
  Label9.Caption := floattostr(KasaYeni);
//  DataModule2.QKasadakiPara.Refresh;
      Numberbox1.value := 0;
  end;
  DataModule2.QIslemGoruntuleme.Refresh;

  //DataModule2.QKasadakiParaGuncelleme.parambyname('PKasadakiPara').value := Kasadakipara +numberbox1.value ;
  //DataModule2.QKasadakiParaGuncelleme.ExecSQL;
  //DataModule2.QKasadakiParaGuncelleme.Close;
 // Label9.Caption := floattostr(KasaYeni);
 // DataModule2.QKasadakiPara.Refresh;
 kasadakiPara := kasayeni;
  numberbox1.Value :=0;
  ComboSeciliIslemID := 0;
  KasaYeni := 0;
end;

procedure TForm2.btnOdemeDurumuClick(Sender: TObject);
begin
PageControl1.ActivePageIndex := 3;
end;

procedure TForm2.btnOdemeDurumlariClick(Sender: TObject);
var
Tarih1,Tarih2 : Tdate;
Tarih : tdate;

Sayi :integer;
ErkenGelenGun,   GecikenGun: integer;
begin
Tarih1 := date ;
Tarih := date  ;
Tarih2 := date + 3;
PageControl1.ActivePageIndex := 3;
DataModule2.QTarihKarsilastirma.Params.ParamByName('PTarih').Value := Tarih1;
DataModule2.QTarihKarsilastirma.Params.ParamByName('PTarih2').Value := Tarih2;
DataModule2.QTarihKarsilastirma.close;
DataModule2.QTarihKarsilastirma.open;
//odemesigecikenler

DataModule2.QOdemesiGecikenler.Params.ParamByName('PTarih').Value := Tarih;
DataModule2.QOdemesiGecikenler.close;
DataModule2.QOdemesiGecikenler.open;
end;

procedure TForm2.btnTedarikciSiparisClick(Sender: TObject);
begin
    PageControl1.ActivePageIndex := 2;
    DataModule2.QSiparisDurum.open;
    DataModule2.TSiparisDurum.Open;

end;

procedure TForm2.btnTedarikciSiparisGuncelleClick(Sender: TObject);
begin
//update Siparis
  DataModule2.QSiparisDurumGuncelle.Params.ParamByName('PSiparisDurumID').Value := SeciliSiparisID ;
  DataModule2.QSiparisDurumGuncelle.Params.ParamByName('PSiparisID').Value := TiklananSiparisID ;
  DataModule2.QSiparisDurumGuncelle.ExecSQL;
  DataModule2.QSiparisDurumGuncelle.Close;
  DataModule2.QSiparisDurum.Refresh;
end;

procedure TForm2.btnTemizleClick(Sender: TObject);
begin
edit3.text := '';
numberbox2.Value := 0;
end;

procedure TForm2.btnUrunlerClick(Sender: TObject);
begin
PageControl1.ActivePageIndex := 1;
DataModule2.QUrunGoruntule.open;
end;
procedure TForm2.btnUrunlerEkleClick(Sender: TObject);
begin
  DataModule2.QUrunEkle.Params.ParamByName('PUrunAdi').Value := edit3.Text;
  DataModule2.QUrunEkle.Params.ParamByName('PUrunFiyat').Value := numberbox2.Value ;
 DataModule2.QUrunEkle.Params.ParamByName('PStok').Value := numberbox2.Value ;
  DataModule2.QUrunEkle.ExecSQL;
  DataModule2.QUrunEkle.Close;
  DataModule2.QUrunGoruntule.Refresh;
    edit3.Text:= '';
    numberbox2.Value:=0;
end;

procedure TForm2.btnUrunlerGuncelleClick(Sender: TObject);
begin
  DataModule2.QUrunFiyatGuncelle.Params.ParamByName('PUrunFiyat').Value := numberbox2.Value ;
  DataModule2.QUrunFiyatGuncelle.Params.ParamByName('PUrunID').Value := TiklananUrunID;
   DataModule2.QUrunFiyatGuncelle.Params.ParamByName('PStok').Value := Numberbox4.Value;
  DataModule2.QUrunFiyatGuncelle.ExecSQL;
  DataModule2.QUrunFiyatGuncelle.Close;
  DataModule2.QUrunGoruntule.Refresh;
end;

procedure TForm2.btnUrunlerKaldirClick(Sender: TObject);
begin
  DataModule2.QUrunKaldir.Params.ParamByName('PUrunID').Value := TiklananUrunID;
  DataModule2.QUrunKaldir.ExecSQL;
  DataModule2.QUrunKaldir.Close;
  DataModule2.QUrunGoruntule.Refresh;
  edit3.Text := '';
  numberbox2.Value :=0;
end;


function TForm2.SeciliUrunID: integer;
begin
  result := DataModule2.TUrunComboUrunID.AsInteger;
end;

function TForm2.SeciliSiparisID: integer;
begin
    result := DataModule2.TSiparisDurumSiparisDurumID.AsInteger;
end;
function TForm2.SeciliIslemId: integer;
begin
    result := DataModule2.TYapilanIslemYapilanIslemID.AsInteger;
end;

procedure TForm2.StringGrid1DblClick(Sender: TObject);
var
  EditHammaddeAdi :string;
   EditHammaddeStok : integer;
   EditHammaddeUrun :string;
begin
   GuncellenecekHammadde := DataModule2.QHammaddeGoruntule.FieldByName('HammaddeID').Value;
   EditHammaddeAdi := DataModule2.QHammaddeGoruntule.FieldByName('HammaddeAdi').Value;
   EditHammaddeStok := DataModule2.QHammaddeGoruntule.FieldByName('HammaddeStok').Value;
   EditHammaddeUrun :=  DataModule2.QHammaddeGoruntule.FieldByName('KullanýldýgýUrun').Value;

   edit1.text := EditHammaddeAdi;
   numberbox3.Value:=  EditHammaddeStok;
   Combobox1.Text:=   EditHammaddeUrun;
end;

procedure TForm2.StringGrid2DblClick(Sender: TObject);
begin
TiklananUrunID := DataModule2.QUrunGoruntule.FieldByName('UrunID').Value;
  edit3.text := DataModule2.QUrunGoruntule.FieldByName('UrunAdi').Value;
  numberbox2.Value :=   DataModule2.QUrunGoruntule.FieldByName('UrunFiyat').Value;
end;

procedure TForm2.StringGrid3DblClick(Sender: TObject);
begin
TiklananSiparisID := DataModule2.QSiparisDurum.FieldByName('SiparisID').Value;

end;

end.
