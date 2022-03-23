unit GenelGirisEkrani;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    btnYoneticiGiris: TButton;
    btnTedarikciGiris: TButton;
    procedure btnYoneticiGirisClick(Sender: TObject);
    procedure btnTedarikciGirisClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses YoneticiGiris, TedarikciGiris;


procedure TForm1.btnTedarikciGirisClick(Sender: TObject);
begin
  TedarikciGiris.Form5.Show;
end;

procedure TForm1.btnYoneticiGirisClick(Sender: TObject);
begin
  YoneticiGiris.Form4.Show ;
end;


end.
