unit unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TFRM_splash = class(TForm)
    barra_carregamento: TProgressBar;
    Timer: TTimer;
    Image1: TImage;
    lb_porcent: TLabel;
    Image2: TImage;
    IMG_colerico: TImage;
    IMG_sanguineo: TImage;
    IMG_fleumatico: TImage;
    IMG_melancolico: TImage;
    Label1: TLabel;
    procedure TimerTimer(Sender: TObject);
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_splash: TFRM_splash;

implementation

{$R *.dfm}

uses Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9;

// acesso tela de testes clicando na logo
procedure TFRM_splash.Image2Click(Sender: TObject);
begin
  FRM_splash.visible := false;
  frm_testes.visible := true;
  Timer.Enabled := false;
end;

// Timer carregamento tela splash + aparecimento das imagens
procedure TFRM_splash.TimerTimer(Sender: TObject);
begin
  barra_carregamento.Position := (barra_carregamento.Position + 10);
  lb_porcent.Caption := inttostr(barra_carregamento.Position);

  if (barra_carregamento.Position >= 10) then
    IMG_colerico.visible := true;
  if (barra_carregamento.Position >= 30) then
    IMG_sanguineo.visible := true;
  if (barra_carregamento.Position >= 50) then
    IMG_fleumatico.visible := true;
  if (barra_carregamento.Position >= 80) then
    IMG_melancolico.visible := true;

  if strtoint(lb_porcent.Caption) >= 100 then
  begin
    Timer.Enabled := false; //para o timer
    FRM_splash.visible := false;          //tela seguinte
    FRM_explicacao.visible := true;
  end;
end;

end.
