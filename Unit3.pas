unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls;

type
  TFRM_perguntas1 = class(TForm)
    Image1: TImage;
    CB_p1c1: TComboBox;
    CB_p1c3: TComboBox;
    CB_p1c2: TComboBox;
    CB_p1c4: TComboBox;
    CB_p3c2: TComboBox;
    CB_p2c2: TComboBox;
    CB_p2c3: TComboBox;
    CB_p2c4: TComboBox;
    CB_p3c1: TComboBox;
    CB_p3c3: TComboBox;
    CB_p3c4: TComboBox;
    CB_p2c1: TComboBox;
    btn_voltar: TSpeedButton;
    BTN_proximo: TSpeedButton;
    Image2: TImage;
    procedure btn_proximoClick(Sender: TObject);
    procedure btn_voltarClick(Sender: TObject);
    procedure fecharClick(Sender: TObject);
    procedure Image2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_perguntas1: TFRM_perguntas1;
  d, i, s, c, d3, i3, c3, s3: integer;

implementation

{$R *.dfm}

uses Unit1, Unit2, Unit4, Unit5, Unit6, Unit7, Unit8, Unit10, Unit9, Unit11;

//remove o valor adicionado pela tela ao clicar no botão de voltar
procedure TFRM_perguntas1.btn_voltarClick(Sender: TObject);
Begin
  FRM_perguntas1.Visible := False;
  FRM_explicacao.Visible := True;
  d := d - d3;
  i := i - i3;
  s := s - s3;
  c := c - c3;
End;

procedure TFRM_perguntas1.fecharClick(Sender: TObject);
begin
  Application.Terminate
end;

procedure TFRM_perguntas1.Image2Click(Sender: TObject);
begin
  FRM_ajuda.show;
end;

//Impede que o programa prossiga com valores inválidos
procedure TFRM_perguntas1.btn_proximoClick(Sender: TObject);
begin
  if (CB_p1c1.text <> CB_p1c2.text) and (CB_p1c1.text <> CB_p1c3.text) and
    (CB_p1c1.text <> CB_p1c4.text) and (CB_p1c2.text <> CB_p1c1.text) and
    (CB_p1c2.text <> CB_p1c3.text) and (CB_p1c2.text <> CB_p1c4.text) and
    (CB_p1c3.text <> CB_p1c2.text) and (CB_p1c3.text <> CB_p1c1.text) and
    (CB_p1c3.text <> CB_p1c4.text) and (CB_p2c1.text <> CB_p2c2.text) and
    (CB_p2c1.text <> CB_p2c3.text) and (CB_p2c1.text <> CB_p2c4.text) and
    (CB_p2c2.text <> CB_p2c1.text) and (CB_p2c2.text <> CB_p2c3.text) and
    (CB_p2c2.text <> CB_p2c4.text) and (CB_p2c3.text <> CB_p2c2.text) and
    (CB_p2c3.text <> CB_p2c1.text) and (CB_p2c3.text <> CB_p2c4.text) and
    (CB_p3c1.text <> CB_p3c2.text) and (CB_p3c1.text <> CB_p3c3.text) and
    (CB_p3c1.text <> CB_p3c4.text) and (CB_p3c2.text <> CB_p3c1.text) and
    (CB_p3c2.text <> CB_p3c3.text) and (CB_p3c2.text <> CB_p3c4.text) and
    (CB_p3c3.text <> CB_p3c2.text) and (CB_p3c3.text <> CB_p3c1.text) and
    (CB_p3c3.text <> CB_p3c4.text) and
    (StrToInt(CB_p1c1.text) + StrToInt(CB_p1c2.text) + StrToInt(CB_p1c3.text) +
    StrToInt(CB_p1c4.text) = 10) and
    (StrToInt(CB_p2c1.text) + StrToInt(CB_p2c2.text) + StrToInt(CB_p2c3.text) +
    StrToInt(CB_p2c4.text) = 10) and
    (StrToInt(CB_p3c1.text) + StrToInt(CB_p3c2.text) + StrToInt(CB_p3c3.text) +
    StrToInt(CB_p3c4.text) = 10) then
  //passa os valores para as variáveis da tela e depois para as variáveis gerais
  Begin
    d3 := StrToInt(CB_p1c1.text) + StrToInt(CB_p2c1.text) +
      StrToInt(CB_p3c1.text);
    i3 := StrToInt(CB_p1c2.text) + StrToInt(CB_p2c2.text) +
      StrToInt(CB_p3c2.text);
    s3 := StrToInt(CB_p1c3.text) + StrToInt(CB_p2c3.text) +
      StrToInt(CB_p3c3.text);
    c3 := StrToInt(CB_p1c4.text) + StrToInt(CB_p2c4.text) +
      StrToInt(CB_p3c4.text);
    d := d3;
    i := i3;
    s := s3;
    c := c3;
    FRM_perguntas1.Visible := False;
    FRM_perguntas2.Visible := True;
  End
  Else
    FRM_erro.show; //tela de erro
end;

end.
