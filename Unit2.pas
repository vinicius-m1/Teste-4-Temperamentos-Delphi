unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.Buttons;

type
  TFRM_explicacao = class(TForm)
    Image1: TImage;
    BTN_proximo: TSpeedButton;
    fechar: TImage;
    procedure BTN_proximoClick(Sender: TObject);
    procedure fecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_explicacao: TFRM_explicacao;

implementation

{$R *.dfm}

uses Unit1, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit10, Unit9;

procedure TFRM_explicacao.BTN_proximoClick(Sender: TObject);
begin
  FRM_perguntas1.visible := True;
  FRM_explicacao.visible := False;
end;

procedure TFRM_explicacao.fecharClick(Sender: TObject);
begin
  Application.Terminate;
end;

begin
  //reseta os valores depois de voltar do botão de reiniciar
  D := 0;
  I := 0;
  S := 0;
  C := 0;

end.
