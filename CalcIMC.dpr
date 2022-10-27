program CalcIMC;

uses
  Vcl.Forms,
  uCalc in 'uCalc.pas' {frm_main},
  uRequisitos in 'uRequisitos.pas' {frm_requisitos},
  uResultado in 'uResultado.pas' {frm_resultado};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_main, frm_main);
  Application.CreateForm(Tfrm_requisitos, frm_requisitos);
  Application.CreateForm(Tfrm_resultado, frm_resultado);
  Application.Run;
end.
