program Teste_4_Temperamentos;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {FRM_splash} ,
  Unit2 in 'Unit2.pas' {FRM_explicacao} ,
  Unit3 in 'Unit3.pas' {FRM_perguntas1} ,
  Unit4 in 'Unit4.pas' {FRM_perguntas2} ,
  Unit5 in 'Unit5.pas' {FRM_perguntas3} ,
  Unit6 in 'Unit6.pas' {FRM_perguntas4} ,
  Unit7 in 'Unit7.pas' {FRM_perguntas5} ,
  Unit8 in 'Unit8.pas' {FRM_Resultado} ,
  Unit9 in 'Unit9.pas' {FRM_Testes} ,
  Unit10 in 'Unit10.pas' {FRM_erro} ,
  Unit11 in 'Unit11.pas' {FRM_ajuda};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFRM_splash, FRM_splash);
  Application.CreateForm(TFRM_explicacao, FRM_explicacao);
  Application.CreateForm(TFRM_perguntas1, FRM_perguntas1);
  Application.CreateForm(TFRM_perguntas2, FRM_perguntas2);
  Application.CreateForm(TFRM_perguntas3, FRM_perguntas3);
  Application.CreateForm(TFRM_perguntas4, FRM_perguntas4);
  Application.CreateForm(TFRM_perguntas5, FRM_perguntas5);
  Application.CreateForm(TFRM_Resultado, FRM_Resultado);
  Application.CreateForm(TFRM_Testes, FRM_Testes);
  Application.CreateForm(TFRM_erro, FRM_erro);
  Application.CreateForm(TFRM_ajuda, FRM_ajuda);
  Application.Run;

end.
