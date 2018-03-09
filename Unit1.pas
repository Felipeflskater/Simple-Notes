unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XPMan, StdCtrls, ComCtrls, Menus;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Novo1: TMenuItem;
    Abrir1: TMenuItem;
    Salvar1: TMenuItem;
    SalvarComo1: TMenuItem;
    N1: TMenuItem;
    ConfigurarPagina1: TMenuItem;
    Imprimir1: TMenuItem;
    N2: TMenuItem;
    Sair1: TMenuItem;
    Editar1: TMenuItem;
    Desfazer1: TMenuItem;
    N3: TMenuItem;
    Recortar: TMenuItem;
    Copiar1: TMenuItem;
    Colar1: TMenuItem;
    N4: TMenuItem;
    SelecionarTudo1: TMenuItem;
    N5: TMenuItem;
    Sobre1: TMenuItem;
    XPManifest1: TXPManifest;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    PrintDialog1: TPrintDialog;
    PageSetupDialog1: TPageSetupDialog;
    RichEdit1: TRichEdit;
    procedure Novo1Click(Sender: TObject);
    procedure Abrir1Click(Sender: TObject);
    procedure SalvarComo1Click(Sender: TObject);
    procedure ConfigurarPagina1Click(Sender: TObject);
    procedure Salvar1Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Desfazer1Click(Sender: TObject);
    procedure RecortarClick(Sender: TObject);
    procedure Copiar1Click(Sender: TObject);
    procedure SelecionarTudo1Click(Sender: TObject);
    procedure LimpaTexto(Sender : TObject);
    procedure Colar1Click(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  NomeArquivo:String;

implementation

uses Math, Unit2;

{$R *.dfm}
procedure TForm1.LimpaTexto (sender : TObject);
  begin
    Form1.RichEdit1.Clear;
  end;
procedure TForm1.Novo1Click(Sender: TObject);
begin
  RichEdit1.clear;
  Form1.Caption:= 'Simple Notes - Novo Documento';
  NomeArquivo:='';
  SaveDialog1.FileName:='';
  Opendialog1.FileName:='';
  RichEdit1.Paragraph.Alignment:= TaLeftJustify;
  RichEdit1.SelAttributes.Color:=0;
  RichEdit1.Font.Name:='Ms Sans Serif';
  RichEdit1.Font.size:=12;
  RichEdit1.Font.color:=0;

end;

procedure TForm1.Abrir1Click(Sender: TObject);
begin
    If (opendialog1.execute) then
      begin
        NomeArquivo:= ExtractFileName(OpenDialog1.Filename);
        RichEdit1.Lines.LoadFromFile(NomeArquivo);
        Form1.Caption:='Simple Notes - ' + NomeArquivo;
      end;
end;

procedure TForm1.SalvarComo1Click(Sender: TObject);
begin
  If (Savedialog1.execute) then
      Begin
        NomeArquivo:= ExtractFileName(SaveDialog1.Filename);
        If (FileExists(NomeArquivo)) Then
          If (MessageDlg('SubstituirArquivo', mtConfirmation, mbOKCancel, 0) <> idOK) Then
            Exit;
          RichEdit1.Lines.SaveToFile(NomeArquivo);
          Form1.Caption := 'Simple Notes - ' + NomeArquivo;
        end;
end;
Procedure Tform1.Salvar1Click(Sender:TObject);
Var
  ArquivoTexto: TextFile;
  Texto:String;
Begin
    Texto:= Richedit1.Text;
     If  (NomeArquivo = ' ') then
        Begin
          salvarcomo1click(sender);
          exit;
        end
     else
        If  (NomeArquivo <> ' ') then
          Begin
            AssignFile(ArquivoTexto,NomeArquivo);
            Rewrite(ArquivoTexto);
            texto:= RichEdit1.Text;
            writeln(ArquivoTexto,texto);
            CloseFile(ArquivoTexto);
            Form1.Caption := 'Simple Notes - ' + NomeArquivo;
          end;
end;
  Procedure TForm1.Configurarpagina1click(sender: Tobject);
    Begin
        PageSetupDialog1.execute;
    end;
     Procedure TForm1.Imprimir1Click(Sender : TObject);
        Begin
            RichEdit1.Print(Text);
        end;
   Procedure TForm1.Sair1Click(sender: Tobject);
      Begin
        application.Terminate;
      end;
    procedure TForm1.Desfazer1Click(Sender: TObject);
begin
      RichEdit1.Undo;
end;
    procedure TForm1.RecortarClick(Sender: TObject);
      Begin
          RichEdit1.Cuttoclipboard;
      end;
   procedure TForm1.Copiar1Click(Sender: TObject);
      Begin
          RichEdit1.CopyToClipBoard;
      end;
   procedure TForm1.Colar1Click(Sender: TObject);
      Begin
        RichEdit1.PasteFromClipBoard;
      end;
    procedure TForm1.SelecionarTudo1Click(Sender: TObject);
      Begin
          RichEdit1.SelStart:=0;
          RichEdit1.SelectAll;
      end;

procedure TForm1.Sobre1Click(Sender: TObject);
begin
  Form2.Showmodal;
end;

end.

