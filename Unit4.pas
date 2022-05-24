unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TFRM_perguntas2 = class(TForm)
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
    fechar: TImage;
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
  FRM_perguntas2: TFRM_perguntas2;
  d4, i4, c4, s4: integer;

implementation

{$R *.dfm}

uses Unit1, Unit2, Unit3, Unit5, Unit6, Unit7, Unit8, Unit10, Unit9, Unit11;

procedure TFRM_perguntas2.btn_voltarClick(Sender: TObject);
Begin
  FRM_perguntas2.Visible := False;
  FRM_perguntas1.Visible := True;
  d := d - d4;
  i := i - i4;
  s := s - s4;
  c := c - c4;
End;

procedure TFRM_perguntas2.fecharClick(Sender: TObject);
begin
  Application.Terminate
end;

procedure TFRM_perguntas2.Image2Click(Sender: TObject);
begin
  FRM_ajuda.show;
end;

procedure TFRM_perguntas2.btn_proximoClick(Sender: TObject);
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
    d4 := d + StrToInt(CB_p1c1.text) + StrToInt(CB_p2c1.text) +
      StrToInt(CB_p3c1.text);
    i4 := i + StrToInt(CB_p1c2.text) + StrToInt(CB_p2c2.text) +
      StrToInt(CB_p3c2.text);
    s4 := s + StrToInt(CB_p1c3.text) + StrToInt(CB_p2c3.text) +
      StrToInt(CB_p3c3.text);
    c4 := c + StrToInt(CB_p1c4.text) + StrToInt(CB_p2c4.text) +
      StrToInt(CB_p3c4.text);
    d := d4;
    i := i4;
    s := s4;
    c := c4;
    FRM_perguntas2.Visible := False;
    FRM_perguntas3.Visible := True;
  End
  Else
    FRM_erro.show;
end;

end.
