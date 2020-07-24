unit uLoginForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, acPNG;

type
  TLoginForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edtUsername: TEdit;
    edtPassword: TEdit;
    btnLogin: TButton;
    CheckBox1: TCheckBox;
    Image1: TImage;
    procedure btnLoginClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtPasswordKeyPress(Sender: TObject; var Key: Char);
    procedure edtUsernameKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LoginForm: TLoginForm;

implementation

uses uMainForm, uDM, DB, ADODB, Math;

{$R *.dfm}

procedure TLoginForm.btnLoginClick(Sender: TObject);
begin
  with dm.qry1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM admin WHERE username = '+ QuotedStr(edtUsername.Text) +'');
    Open;
  end;
  if dm.qry1.RecordCount=0 then
  begin
    Application.MessageBox('Username Tidak Ditemukan','Informasi',MB_OK or MB_ICONINFORMATION);
    FormShow(Sender);
  end
  else
  begin
    if (dm.qry1.FieldByName('password').AsString<>edtPassword.Text) then
    begin
      Application.MessageBox('Password Salah','Error',MB_OK or MB_ICONERROR);
      FormShow(Sender);
    end
    else if (dm.qry1.FieldByName('status').AsString='OFF') THEN
    begin
      Application.MessageBox('Akun Dinonaktifkan! Silahkan Hubungi Admin.','Error',MB_OK or MB_ICONERROR);
      FormShow(Sender);
    end
    else
    begin
      Application.MessageBox('Login Berhasil, Selamat Bekerja!','Berhasil',MB_OK or MB_ICONINFORMATION);
      with dm.qry2 do
        begin
          Close;
          SQL.Text:='SELECT akses FROM admin WHERE username = '+QuotedStr(edtUsername.Text)+' AND password = '+QuotedStr(edtPassword.Text)+'';
          Open;
          if Fields[0].AsString='ADMIN' then
          begin
            with MainForm do
            begin

              Width:=1267; Height:=710; Position:=poDesktopCenter;
              lblUsername.Caption:=edtUsername.Text;
              Master.Enabled:=True;
              Master.Visible:=True;
              Transaksi.Enabled:=True;
              Transaksi.Visible:=True;
              Konsumen.Enabled:=True;
              Konsumen.Visible:=True;
              Laporan.Enabled:=True;
              Laporan.Visible:=True;
              Show;
            end
          end
          else
          begin
            with MainForm do
            begin

              Width:=1267; Height:=710; Position:=poDesktopCenter;
              lblUsername.Caption:=edtUsername.Text;
              Master.Enabled:=False;
              Master.Visible:=False;
              Transaksi.Enabled:=True;
              Transaksi.Visible:=True;
              Konsumen.Enabled:=True;
              Konsumen.Visible:=True;
              Laporan.Enabled:=False;
              Laporan.Visible:=False;
              Show;
            end
          end;
      end;
      LoginForm.Hide;
    end
  end;
end;

procedure TLoginForm.FormShow(Sender: TObject);
begin
edtUsername.Clear;
edtPassword.Clear;
edtUsername.SetFocus;
end;

procedure TLoginForm.edtPasswordKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
    btnLogin.Click;
  end;
end;

procedure TLoginForm.edtUsernameKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
    btnLogin.Click;
  end;
end;

procedure TLoginForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Application.Terminate;
end;

procedure TLoginForm.FormDestroy(Sender: TObject);
begin
Application.Terminate;
end;

procedure TLoginForm.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.Checked then
  begin
    edtPassword.PasswordChar:=#0;
  end
else
  begin
    edtPassword.PasswordChar:='*';
  end;
end;

end.
