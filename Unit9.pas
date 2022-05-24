unit Unit9;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TFRM_Testes = class(TForm)
    TXT_D: TEdit;
    TXT_I: TEdit;
    TXT_S: TEdit;
    TXT_C: TEdit;
    BTN_executar: TButton;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button1: TButton;
    procedure BTN_executarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_Testes: TFRM_Testes;

implementation

{$R *.dfm}

uses Unit1, Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8;


// tela de testes e debug, nao disponivel pro usuario final
procedure TFRM_Testes.BTN_executarClick(Sender: TObject);
begin
  D := strtoint(TXT_D.Text);
  I := strtoint(TXT_I.Text);
  S := strtoint(TXT_S.Text);
  C := strtoint(TXT_C.Text);
  FRM_Testes.visible := false;
  frm_resultado.visible := true;
end;

procedure TFRM_Testes.Button1Click(Sender: TObject);
begin
  TXT_D.Text := inttostr(10);
  TXT_I.Text := inttostr(20);
  TXT_S.Text := inttostr(30);
  TXT_C.Text := inttostr(40);

end;

end.
