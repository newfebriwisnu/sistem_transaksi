unit uInputAdmin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmInputAdmin = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtNama: TEdit;
    edtUsername: TEdit;
    edtPassword: TEdit;
    Button1: TButton;
    Button2: TButton;
    edtId: TEdit;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure InputData;
    procedure UbahData;
  end;

var
  frmInputAdmin: TfrmInputAdmin;

implementation

uses uDM, uDataAdmin;

{$R *.dfm}

procedure TfrmInputAdmin.InputData;
begin
  with dm.qry1 do
    begin
      Active:=False;
      Close;
      SQL.Clear;
      SQL.Text:='INSERT INTO admin (nama,username,password) VALUES('+
        QuotedStr(edtNama.Text)+
        ','+QuotedStr(edtUsername.Text)+
        ','+QuotedStr(edtPassword.Text)+')';
        ExecSQL;
    end;
end;

procedure TfrmInputAdmin.UbahData;
begin
with dm.qry1 do
    begin
      Active:=False;
      Close;
      SQL.Clear;
      SQL.Text:='UPDATE admin SET nama = '+ QuotedStr(edtNama.Text) +
                ', username = '+ QuotedStr(edtUsername.Text) +
                ', password = '+ QuotedStr(edtPassword.Text) +
                ' WHERE id_admin = '+ QuotedStr(edtId.Text) +'';
        ExecSQL;
    end;
end;

procedure TfrmInputAdmin.Button2Click(Sender: TObject);
begin
FormShow(Sender);
end;

procedure TfrmInputAdmin.Button1Click(Sender: TObject);
begin
if (edtNama.Text='') or (edtUsername.Text='') or (edtPassword.Text='') then
    begin
      ShowMessage('Silahkan isi data yang masih kosong');
    end
  else
  begin
    if (Button1.Caption='Simpan') then
    begin
      if(Application.MessageBox('Simpan Data?','PESAN',MB_YESNO+MB_ICONWARNING)=ID_YES) then
        begin
          try dm.con1.BeginTrans;
            InputData;
            dm.con1.CommitTrans;
            frmDataAdmin.FormShow(Sender);
            ShowMessage('Data Tersimpan');
            frmInputAdmin.Close;
          except dm.con1.RollbackTrans;
            ShowMessage('Gagal Tersimpan');
          end;
        end
      else
        begin

        end;
    end
    else if (Button1.Caption='Ubah') then
    begin
      if(Application.MessageBox('Ubah Data?','PESAN',MB_YESNO+MB_ICONWARNING)=ID_YES) then
        begin
          try dm.con1.BeginTrans;
            UbahData;
            dm.con1.CommitTrans;
            frmDataAdmin.FormShow(Sender);
            ShowMessage('Data Tersimpan');
            frmInputAdmin.Close;
          except dm.con1.RollbackTrans;
            ShowMessage('Gagal Tersimpan');
          end;
        end
      else
        begin
          
        end;
    end
    else
    begin
      frmInputAdmin.Close;
    end;
  end;
end;

procedure TfrmInputAdmin.FormShow(Sender: TObject);
begin
edtNama.Text:='';
edtUsername.Text:='';
edtPassword.Text:='';
edtNama.SetFocus;
end;

end.
