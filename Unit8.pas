unit Unit8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TFRM_Resultado = class(TForm)
    Image1: TImage;
    PB_D: TProgressBar;
    PB_I: TProgressBar;
    PB_S: TProgressBar;
    PB_C: TProgressBar;
    LB_resultado: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Image2: TImage;
    LB_pontosD: TLabel;
    LB_pontosI: TLabel;
    LB_pontosS: TLabel;
    LB_pontosC: TLabel;
    reiniciar: TSpeedButton;
    LB_AmongUS: TLabel;
    IMG_colerico: TImage;
    IMG_fleumatico: TImage;
    IMG_melancolico: TImage;
    IMG_sanguineo: TImage;
    LB_descricao: TLabel;
    BTN_resultado: TImage;
    Hitbox: TImage;
    IMG_papaleguas: TImage;
    Timer1: TTimer;
    IMG_colericodesc: TImage;
    IMG_sanguineodesc: TImage;
    IMG_melancolicodesc: TImage;
    IMG_fleumaticodesc: TImage;
    procedure BTN_resultadoClick(Sender: TObject);
    procedure reiniciarClick(Sender: TObject);
    procedure fecharClick(Sender: TObject);
    procedure Image2Click(Sender: TObject);

    procedure Timer1Timer(Sender: TObject);
    procedure HitboxMouseEnter(Sender: TObject);
    procedure HitboxMouseLeave(Sender: TObject);

  private
    { Private declarations }
  var
    // papaleguas:integer;
  public
    { Public declarations }
  end;

var
  FRM_Resultado: TFRM_Resultado;
  repete, repete2, papaleguas, letra: integer;

implementation

{$R *.dfm}

uses Unit1, Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit10, Unit9;

procedure TFRM_Resultado.BTN_resultadoClick(Sender: TObject);
begin
Timer1.enabled:=true;
  LB_pontosD.caption := inttostr(D);
  LB_pontosI.caption := inttostr(I);
  LB_pontosS.caption := inttostr(S);
  LB_pontosC.caption := inttostr(C);

//compara os valores, decide a cor das barras de progresso do gráfico e decide o resultado
  if (D > I) and (D > S) and (D > C) then
  begin
    LB_resultado.caption := 'D - Colérico';
    PB_D.State := pbsNormal;
    letra := 1;
    LB_descricao.caption := 'Gosta de ter papel ativo' + #13#10 +
      'e é orientado para tarefas.';
    IMG_colerico.Visible := true;
    if (I > S) and (I > C) then
      PB_I.State := pbsPaused
    Else if (S > I) and (S > C) then
      PB_S.State := pbsPaused
    Else if (C > S) and (C > I) then
      PB_C.State := pbsPaused
    Else if (I = S) and (I > C) and (I >= 39) then
    Begin
      PB_I.State := pbsPaused;
      PB_S.State := pbsPaused;
    End
    Else if (I = C) and (I > S) and (I >= 39) then
    Begin
      PB_I.State := pbsPaused;
      PB_C.State := pbsPaused;
    End
    Else if (S = C) and (S > I) and (S >= 39) then
    Begin
      PB_C.State := pbsPaused;
      PB_S.State := pbsPaused;
    End;

  End
  Else if (I > D) and (I > S) and (I > C) then
  Begin
    LB_resultado.caption := 'I - Sanguíneo';
    PB_I.State := pbsNormal;
    LB_descricao.caption := 'Gosta de ter papel ativo' + #13#10 +
      'e é orientado para pessoas.';
    letra := 2;
    IMG_sanguineo.Visible := true;
    if (D > S) and (D > C) then
      PB_D.State := pbsPaused
    Else if (S > D) and (S > C) then
      PB_S.State := pbsPaused
    Else if (C > D) and (C > S) then
      PB_C.State := pbsPaused
    Else if (D = S) and (D > C) and (D >= 39) then
    Begin
      PB_D.State := pbsPaused;
      PB_S.State := pbsPaused;
    End
    Else if (D = C) and (D > S) and (D >= 39) then
    Begin
      PB_D.State := pbsPaused;
      PB_C.State := pbsPaused;
    End
    Else if (S = C) and (S > D) and (S >= 39) then
    Begin
      PB_C.State := pbsPaused;
      PB_S.State := pbsPaused;
    End;
  End
  Else if (S > D) and (S > I) and (S > C) then
  Begin
    LB_resultado.caption := 'S - Fleumático';
    PB_S.State := pbsNormal;
    letra := 3;
    LB_descricao.caption := 'Gosta de ter papel passivo' + #13#10 +
      'e é orientado para pessoas.';
    IMG_fleumatico.Visible := true;
    if (I > D) and (I > C) then
      PB_I.State := pbsPaused
    Else if (D > I) and (D > C) then
      PB_D.State := pbsPaused
    Else if (C > D) and (C > I) then
      PB_C.State := pbsPaused
    Else if (D = I) and (D > C) and (D >= 39) then
    Begin
      PB_I.State := pbsPaused;
      PB_D.State := pbsPaused;
    End
    Else if (D = C) and (D > I) and (D >= 39) then
    Begin
      PB_D.State := pbsPaused;
      PB_C.State := pbsPaused;
    End
    Else if (I = C) and (I > D) and (I >= 39) then
    Begin
      PB_C.State := pbsPaused;
      PB_I.State := pbsPaused;
    End;
  End
  Else if (C > D) and (C > S) and (C > I) then
  Begin
    LB_resultado.caption := 'C - Melancólico';
    PB_C.State := pbsNormal;
    letra := 4;
    LB_descricao.caption := 'Gosta de ter papel passivo' + #13#10 +
      'e é orientado para tarefas.';
    IMG_melancolico.Visible := true;
    if (I > S) and (I > D) then
      PB_I.State := pbsPaused
    Else if (D > S) and (D > I) then
      PB_D.State := pbsPaused
    Else if (S > D) and (S > I) then
      PB_S.State := pbsPaused
    Else if (D = I) and (D > S) and (D >= 39) then
    Begin
      PB_I.State := pbsPaused;
      PB_D.State := pbsPaused;
    End
    Else if (D = S) and (D > I) and (D >= 39) then
    Begin
      PB_D.State := pbsPaused;
      PB_S.State := pbsPaused;
    End
    Else if (I = S) and (I > D) and (I >= 39) then
    Begin
      PB_I.State := pbsPaused;
      PB_S.State := pbsPaused;
    End;
  End;
  repeat
    repete := repete + 1;
    PB_D.position := D;
    PB_I.position := I;
    PB_S.position := S;
    PB_C.position := C;
  until repete = 2;
  repete := 0;

  // decide o nome especifico da personalidade
  if (letra = 1) then
  Begin
    if (S <= 37) and (C <= 37) and (I <= 37) then
    Begin
      LB_AmongUS.caption := 'Visionário';
    End
    Else if (I > S) and (I > C) and (S <= 37) and (C <= 37) then
    Begin
      LB_AmongUS.caption := 'Realizador';
    End
    Else if (I > 50) and (S <= 37) and (C <= 37) then
    Begin
      LB_AmongUS.caption := 'Inspirador';
    End
    Else if (S >= 51) and (S > C) and (S > I) then
    Begin
      LB_AmongUS.caption := 'Conquistador';
    End
    Else if (C > S) and (C > I) and (S > 37) and (C >= 51) and (I <= 37) or
      (C > S) and (C > I) and (S <= 37) and (I <= 37) then
    Begin
      LB_AmongUS.caption := 'Criativo';
    End;
  End
  Else
    if (letra = 2) then
  Begin
    if (C > I) and (S > I) and (C >= 39) and (S >= 39) then
    Begin
      LB_AmongUS.caption := 'Realista';
    End
    Else if (D <= 37) and (C <= 37) and (S <= 37) then
    Begin
      LB_AmongUS.caption := 'Persuasivo';
    End
    Else if (D >= 39) and (S <= 37) and (C <= 37) then
    Begin
      LB_AmongUS.caption := 'Incentivador';
    End
    Else if (S >= 39) and (D <= 37) and (C <= 37) then
    Begin
      LB_AmongUS.caption := 'Conselheiro';
    End
    Else if (C >= 39) and (S <= 37) and (D <= 37) then
    Begin
      LB_AmongUS.caption := 'Promotor';
    End;
  End
  Else
    if (letra = 3) then
  Begin
    if (I > C) and (I > D) and (C <= 37) and (D <= 37) then
    Begin
      LB_AmongUS.caption := 'Conselheiro';
    End
    Else if (C <= 37) and (I <= 37) and (D <= 37) then
    Begin
      LB_AmongUS.caption := 'Especialista';
    End
    Else if (D >= 39) and (I <= 37) and (C <= 37) then
    Begin
      LB_AmongUS.caption := 'Conquistador';
    End
    Else if (C >= 39) and (I >= 39) and (D <= 37) then
    Begin
      LB_AmongUS.caption := 'Defensor';
    End
    Else if (C >= 39) and (D <= 37) and (I <= 37) then
    Begin
      LB_AmongUS.caption := 'Argumentista';
    End;
  End
  Else
    if (letra = 4) then
  Begin
    if (D > 39) and (S <= 37) and (I <= 37) then
    Begin
      LB_AmongUS.caption := 'Criativo';
    End
    Else if (S <= 37) and (I <= 37) and (D <= 37) then
    Begin
      LB_AmongUS.caption := 'Pensador objetivo';
    End
    Else if (I >= 39) and (D <= 37) and (C <= 37) then
    Begin
      LB_AmongUS.caption := 'Determinado';
    End
    Else if (S >= 39) and (I <= 37) and (D <= 37) then
    Begin
      LB_AmongUS.caption := 'Focado';
    End
    Else if (I >= 39) and (S >= 39) and (D <= 37) then
    Begin
      LB_AmongUS.caption := 'Realista';
    End;
  End

End;
 //reseta os valores da tela e reinicia o teste na primeira tela
procedure TFRM_Resultado.reiniciarClick(Sender: TObject);
begin
  PB_I.State := pbsError;
   PB_D.State := pbsError;
    PB_S.State := pbsError;
     PB_C.State := pbsError;
  LB_AmongUS.caption := '  ';
  LB_descricao.caption := '  ';
  LB_resultado.caption := '  ';
  repeat
    repete2 := (repete2 + 1);
    PB_D.position := 0;
    PB_I.position := 0;
    PB_S.position := 0;
    PB_C.position := 0;
  until repete2 = 2;
  repete2 := 0;
  LB_pontosD.caption := ('??');
  LB_pontosI.caption := ('??');
  LB_pontosS.caption := ('??');
  LB_pontosC.caption := ('??');
  FRM_Resultado.Visible := false;
  frm_explicacao.Visible := true;
  IMG_colerico.Visible := false;
  IMG_fleumatico.Visible := false;
  IMG_sanguineo.Visible := false;
  IMG_melancolico.Visible := false;

end;
    //animação mascote papaleguas passando pela tela
procedure TFRM_Resultado.Timer1Timer(Sender: TObject);
begin
  papaleguas := papaleguas + 10;
  IMG_papaleguas.Left := (papaleguas);
  if papaleguas > 1100 then
    Timer1.enabled := false;
end;

procedure TFRM_Resultado.fecharClick(Sender: TObject);
begin
  Application.Terminate
end;

// evento entrada e saida do mouse para mudar entre descrição/imagem do resultado
procedure TFRM_Resultado.HitboxMouseEnter(Sender: TObject);
begin
  if letra = 1 then
  begin
    IMG_colericodesc.Visible := true;
    IMG_colerico.Visible := false;
  end
  else if letra = 2 then
  begin
    IMG_sanguineodesc.Visible := true;
    IMG_sanguineo.Visible := false;
  end
  else if letra = 4 then
  begin
    IMG_melancolicodesc.Visible := true;
    IMG_melancolico.Visible := false;
  end
  else if letra = 3 then
  begin
    IMG_fleumaticodesc.Visible := true;
    IMG_fleumatico.Visible := false;
  end;

end;

procedure TFRM_Resultado.HitboxMouseLeave(Sender: TObject);
begin
  if letra = 1 then
  begin
    IMG_colericodesc.Visible := false;
    IMG_colerico.Visible := true;
  end
  else if letra = 2 then
  begin
    IMG_sanguineodesc.Visible := false;
    IMG_sanguineo.Visible := true;
  end
  else if letra = 4 then
  begin
    IMG_melancolicodesc.Visible := false;
    IMG_melancolico.Visible := true;
  end
  else if letra = 3 then
  begin
    IMG_fleumaticodesc.Visible := false;
    IMG_fleumatico.Visible := true;
  end;

end;

//reseta os valores de tudo na tela e vai pra tela de testes ao clicar na logo
procedure TFRM_Resultado.Image2Click(Sender: TObject);
begin
  PB_I.State := pbsError;
   PB_D.State := pbsError;
    PB_S.State := pbsError;
     PB_C.State := pbsError;
  LB_AmongUS.caption := '  ';       //nao questionar nome
  LB_descricao.caption := '  ';
  LB_resultado.caption := '  ';
  repeat
    repete2 := (repete2 + 1);
    PB_D.position := 0;
    PB_I.position := 0;
    PB_S.position := 0;
    PB_C.position := 0;
  until repete2 = 2;
  repete2 := 0;
  LB_pontosD.caption := ('??');
  LB_pontosI.caption := ('??');
  LB_pontosS.caption := ('??');
  LB_pontosC.caption := ('??');

  IMG_colerico.Visible := false;
  IMG_fleumatico.Visible := false;
  IMG_sanguineo.Visible := false;
  IMG_melancolico.Visible := false;
  FRM_Testes.show;

end;

end.
