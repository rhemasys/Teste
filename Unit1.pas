unit Unit1;
//////////////////////////////////////////////////////////////////////
// Exemplo de uso do componente TChart                              //
// Ricardo Scache Belardinuci - Email: ri-taqua@ig.com.br           //
// Este Programa é Open Source e Gratuíto                           //
// Atenção: A única obrigação é, em caso de uso ou comercialização, //
// manter nos créditos Ricardo S. Belardinuci. Obrigado.            //
//////////////////////////////////////////////////////////////////////

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TeEngine, Series, ExtCtrls, Chart, TeeProcs,
  VclTee.TeeGDIPlus;

type
  TForm1 = class(TForm)
    Chart1: TChart;
    SerieVendas: TBarSeries;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    EditMesJan: TEdit;
    EditMesFev: TEdit;
    EditMesMar: TEdit;
    EditMesAbr: TEdit;
    EditMesMai: TEdit;
    EditMesJun: TEdit;
    BtnGerarGrafico: TButton;
    BtnImprir: TButton;
    RadioGroup1: TRadioGroup;
    BtnAlterarTituloGrafico: TButton;
    Bevel1: TBevel;
    PrinterSetupDialog1: TPrinterSetupDialog;
    Edit1: TEdit;
    procedure EditMesJanKeyPress(Sender: TObject; var Key: Char);
    procedure BtnGerarGraficoClick(Sender: TObject);
    procedure BtnImprirClick(Sender: TObject);
    procedure BtnAlterarTituloGraficoClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.EditMesJanKeyPress(Sender: TObject; var Key: Char);
begin
//   if (not (Key in ['0'..'9',#8,#13,','])) and (Key <> ',') then
   if (not (Key in ['0'..'9',#8,#13,','])) then
   Abort;
end;

procedure TForm1.BtnGerarGraficoClick(Sender: TObject);
begin
   //Limpando o Gráfico...
   SerieVendas.Clear;
   //Adidionando os Dados para Gerar o Gráfico...
   // Método AddY
   //1º parâmetro = Valor
   //2º parâmetro = Rótulo da Coluna
   //3º parâmetro = Cor da Coluna
   SerieVendas.AddY(StrToCurrDef(EditMesJan.Text,0),'Janeiro',clNavy);
   SerieVendas.AddY(StrToCurrDef(EditMesFev.Text,0),'Fevereiro',clBlue);
   SerieVendas.AddY(StrToCurrDef(EditMesMar.Text,0),'Março',clRed);
   SerieVendas.AddY(StrToCurrDef(EditMesAbr.Text,0),'Abril',clInfoBk);
   SerieVendas.AddY(StrToCurrDef(EditMesMai.Text,0),'Maio',clSilver);
   SerieVendas.AddY(StrToCurrDef(EditMesJun.Text,0),'Junho',clGreen);
end;

procedure TForm1.BtnImprirClick(Sender: TObject);
begin
  if PrinterSetupDialog1.Execute then
  case RadioGroup1.ItemIndex of
    0: Chart1.PrintLandscape;
    1: Chart1.PrintPortrait;
  end;
end;

procedure TForm1.BtnAlterarTituloGraficoClick(Sender: TObject);
begin
  Chart1.Title.Text.Clear;
  Chart1.Title.Text.Add(InputBox('Titulo do Grafico','Descrição','Gráfico'));
end;

procedure TForm1.FormKeyPress(Sender: TObject; var Key: Char);
begin
  // Para mudar de campo teclando [Enter]
  if Key = #13 then
  begin
      Perform(WM_NEXTDLGCTL,0,0);
      Key:=#0;
  end;
end;

end.
