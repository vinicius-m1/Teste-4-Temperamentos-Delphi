unit Unit11;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TFRM_ajuda = class(TForm)
    Image1: TImage;
    fechar: TImage;
    procedure fecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_ajuda: TFRM_ajuda;

implementation

{$R *.dfm}

procedure TFRM_ajuda.fecharClick(Sender: TObject);
begin
  FRM_ajuda.visible := false;
end;

end.
