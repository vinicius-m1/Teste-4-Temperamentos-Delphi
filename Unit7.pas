unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TFRM_perguntas5 = class(TForm)
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
    Image1: TImage;
    BTN_proximo: TSpeedButton;
    btn_voltar: TSpeedButton;
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
  FRM_perguntas5: TFRM_perguntas5;
  d7, i7, c7, s7: integer;

implementation

{$R *.dfm}

uses Unit1, Unit2, Unit3, Unit4, Unit5, Unit6, Unit8, Unit10, Unit9, Unit11;

procedure TFRM_perguntas5.btn_voltarClick(Sender: TObject);
Begin
  FRM_perguntas5.Visible := False;
  FRM_perguntas4.Visible := True;
  d := d - d7;
  i := i - i7;
  s := s - s7;
  c := c - c7;
End;

procedure TFRM_perguntas5.fecharClick(Sender: TObject);
begin
  Application.Terminate
end;

procedure TFRM_perguntas5.Image2Click(Sender: TObject);
begin
  FRM_ajuda.show;
end;

procedure TFRM_perguntas5.btn_proximoClick(Sender: TObject);
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
  Begin
    d7 := d + StrToInt(CB_p1c1.text) + StrToInt(CB_p2c1.text) +
      StrToInt(CB_p3c1.text);
    i7 := i + StrToInt(CB_p1c2.text) + StrToInt(CB_p2c2.text) +
      StrToInt(CB_p3c2.text);
    s7 := s + StrToInt(CB_p1c3.text) + StrToInt(CB_p2c3.text) +
      StrToInt(CB_p3c3.text);
    c7 := c + StrToInt(CB_p1c4.text) + StrToInt(CB_p2c4.text) +
      StrToInt(CB_p3c4.text);
    d := d7;
    i := i7;
    s := s7;
    c := c7;
    FRM_perguntas5.Visible := False;
    FRM_resultado.Visible := True;
  End
  Else
    FRM_erro.show;
end;

end.
