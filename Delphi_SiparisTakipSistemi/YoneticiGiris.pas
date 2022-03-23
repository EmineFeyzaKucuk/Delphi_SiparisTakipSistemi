unit YoneticiGiris;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm4 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    btnYoneticiGirisYap: TButton;
    procedure btnYoneticiGirisYapClick(Sender: TObject);
    function GirisYapp: boolean;
  private
    { Private declarations }
  public
    { Public declarations }
    YoneticiID: integer;
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses YoneticiIslem, dmYonetici;

procedure TForm4.btnYoneticiGirisYapClick(Sender: TObject);
var
  GirisKontrol: boolean;
begin
  GirisKontrol := GirisYapp;
  if GirisKontrol = true then
  begin
    YoneticiIslem.Form2.Show;
    Edit1.Text := '';
    Edit2.Text := '';
  end
  else
  begin
    ShowMessage('Giriþ Bilgilerini Kontrol Ederek Tekrar Deneyiniz');
    Edit1.Text := '';
    Edit2.Text := '';
  end;
end;

function TForm4.GirisYapp: boolean;
begin
  DataModule2.QYonetici.Close;
  DataModule2.QYonetici.sql.Clear;
  DataModule2.QYonetici.sql.Text :=
    'Select * from Yonetici where YoneticiAdSoyad = :PYoneticiAdSoyad and YoneticiSifre = :PYoneticiSifre';
  DataModule2.QYonetici.Params.ParamByName('PYoneticiAdSoyad').Value :=
    Edit1.Text;
  DataModule2.QYonetici.Params.ParamByName('PYoneticiSifre').Value :=
    Edit2.Text;
  DataModule2.QYonetici.Open();
  DataModule2.QYonetici.First;
  if DataModule2.QYonetici.recordcount > 0 then
  begin
    result := true;
    YoneticiID := DataModule2.QYonetici.FieldByName('YoneticiID').Value;
  end
  else
  begin
    result := false;
  end;

end;

end.
