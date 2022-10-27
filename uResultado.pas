unit uResultado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  Tfrm_resultado = class(TForm)
    pnl_resultado: TPanel;
    img_resultado: TImage;
    lbl_resultado_altura: TLabel;
    lbl_resultado_peso: TLabel;
    lbl_resultado_sexo: TLabel;
    lbl_resultado_imc: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_resultado: Tfrm_resultado;

implementation

uses uCalc;

{$R *.dfm}

end.
