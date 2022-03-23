program SistemAnaliziProje;

uses
  Vcl.Forms,
  GenelGirisEkrani in 'GenelGirisEkrani.pas' {Form1},
  YoneticiIslem in 'YoneticiIslem.pas' {Form2},
  TedarikciIslem in 'TedarikciIslem.pas' {Form3},
  dmTedarikci in 'dmTedarikci.pas' {DataModule1: TDataModule},
  YoneticiGiris in 'YoneticiGiris.pas' {Form4},
  TedarikciGiris in 'TedarikciGiris.pas' {Form5},
  dmYonetici in 'dmYonetici.pas' {DataModule2: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.Run;
end.
