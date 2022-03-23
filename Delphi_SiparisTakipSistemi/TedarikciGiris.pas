unit TedarikciGiris;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm5 = class(TForm)
    Panel1: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnTedarikciGirisYap: TButton;
    procedure btnTedarikciGirisYapClick(Sender: TObject);
    function GirisYapp: boolean;
  private
    { Private declarations }
  public
    { Public declarations }
    KisiID : integer;
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

uses TedarikciIslem, dmTedarikci;

procedure TForm5.btnTedarikciGirisYapClick(Sender: TObject);
var
  GirisKontrol: boolean;
begin
  GirisKontrol := GirisYapp;
  if GirisKontrol = true then
  begin
     TedarikciIslem.Form3.Show;
   //  edit1.Text := '';
   //  edit2.text := '';
  end
  else
  begin
    ShowMessage('Giriþ Bilgilerini Kontrol Ederek Tekrar Deneyiniz');
     edit1.Text := '';
     edit2.text := '';
  end;

end;

function TForm5.GirisYapp: boolean;
 begin
  DataModule1.QKisiBilgisi.Close;
  DataModule1.QKisiBilgisi.sql.Clear;
 DataModule1.QKisiBilgisi.sql.Text :=
 'Select * from KisiBilgisi where KisiAdSoyad = :PKisiAdSoyad and KisiSifre = :PKisiSifre';
  DataModule1.QKisiBilgisi.Params.ParamByName('PKisiAdSoyad').Value :=
    Edit1.Text;
  DataModule1.QKisiBilgisi.Params.ParamByName('PKisiSifre').Value := Edit2.Text;
  DataModule1.QKisiBilgisi.Open();
  DataModule1.QKisiBilgisi.First;
  if DataModule1.QKisiBilgisi.recordcount > 0 then
  begin
    result := true;
    KisiID := DataModule1.QKisiBilgisi.FieldByName('KisiID').Value;
  end
  else
  begin
    result := false;
  end;
end;

end.
