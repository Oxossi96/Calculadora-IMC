unit uCalc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, uRequisitos, uResultado;

type
  Tfrm_main = class(TForm)
    btn_resultado: TButton;
    btn_requisitos: TButton;
    lbl_altura: TLabel;
    lbl_peso: TLabel;
    lbl_sexo: TLabel;
    pnl_calc: TPanel;
    edt_altura: TEdit;
    edt_peso: TEdit;
    cbx_sexo: TComboBox;
    img_calc: TImage;
    procedure btn_requisitosClick(Sender: TObject);
    procedure btn_resultadoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_main: Tfrm_main;

implementation

{$R *.dfm}

procedure Tfrm_main.btn_requisitosClick(Sender: TObject);
begin
      frm_requisitos.ShowModal;
end;

procedure Tfrm_main.btn_resultadoClick(Sender: TObject);
var
    Altura: double;
    Peso: double;
    ResultadoIMC: double;
begin
    if cbx_sexo.Text = '' then
        raise Exception.Create('Informe o sexo!!');
    try
        frm_resultado.lbl_resultado_altura.Caption := edt_altura.Text;
        frm_resultado.lbl_resultado_peso.Caption := edt_peso.Text;
        frm_resultado.lbl_resultado_sexo.Caption := cbx_sexo.Text;

        Altura := StrToFloat(edt_altura.Text);
        Peso := StrToFloat(edt_peso.Text);
        ResultadoIMC := Peso / (Altura * Altura);

        if (cbx_sexo.Text = 'Feminino') and (ResultadoIMC < 19.1) then
            frm_resultado.lbl_resultado_imc.Caption := FormatFloat('#0.00', ResultadoIMC) + ' Abaixo do peso';
        if (cbx_sexo.Text = 'Feminino') and (ResultadoIMC >= 19.1) then
            frm_resultado.lbl_resultado_imc.Caption := FormatFloat('#0.00', ResultadoIMC) + ' No peso ideal';
        if (cbx_sexo.Text = 'Feminino') and (ResultadoIMC >= 25.8) then
             frm_resultado.lbl_resultado_imc.Caption := FormatFloat('#0.00', ResultadoIMC) + ' Um pouco acima do peso';
        if (cbx_sexo.Text = 'Feminino') and (ResultadoIMC >= 27.3) then
            frm_resultado.lbl_resultado_imc.Caption := FormatFloat('#0.00', ResultadoIMC) + ' Acima do peso ideal';
        if (cbx_sexo.Text = 'Feminino') and (ResultadoIMC >= 32.3) then
            frm_resultado.lbl_resultado_imc.Caption := FormatFloat('#0.00', ResultadoIMC) + ' Obesa';

        if (cbx_sexo.Text = 'Masculino') and (ResultadoIMC < 20.7) then
            frm_resultado.lbl_resultado_imc.Caption := FormatFloat('#0.00', ResultadoIMC) + ' Abaixo do peso';
        if (cbx_sexo.Text = 'Masculino') and (ResultadoIMC >= 20.7) then
            frm_resultado.lbl_resultado_imc.Caption := FormatFloat('#0.00', ResultadoIMC) + ' No peso ideal';
        if (cbx_sexo.Text = 'Masculino') and (ResultadoIMC >= 26.4) then
            frm_resultado.lbl_resultado_imc.Caption := FormatFloat('#0.00', ResultadoIMC) + ' Um pouco acima do peso';
        if (cbx_sexo.Text = 'Masculino') and (ResultadoIMC >= 27.8) then
            frm_resultado.lbl_resultado_imc.Caption := FormatFloat('#0.00', ResultadoIMC) + ' Acima do peso ideal';
        if (cbx_sexo.Text = 'Masculino') and (ResultadoIMC >= 31.1) then
            frm_resultado.lbl_resultado_imc.Caption := FormatFloat('#0.00', ResultadoIMC) + ' Obeso';

        frm_resultado.ShowModal;
    except
        ShowMessage('Ocorreu um erro ao Calcular o IMC!! Por favor informe dados válidos.');
    end
end;

end.
