unit uInputProduk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmInputProduk = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtId: TEdit;
    edtNama: TEdit;
    edtDeskripsi: TEdit;
    edtHarga: TEdit;
    Label5: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure edtIdKeyPress(Sender: TObject; var Key: Char);
    procedure edtNamaKeyPress(Sender: TObject; var Key: Char);
    procedure edtDeskripsiKeyPress(Sender: TObject; var Key: Char);
    procedure edtHargaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure InputData;
    procedure UbahData;
  end;

var
  frmInputProduk: TfrmInputProduk;

implementation

uses uDM, uDataProduk;

{$R *.dfm}

procedure TfrmInputProduk.InputData;
begin
  with dm.qry1 do
    begin
      Active:=False;
      Close;
      SQL.Clear;
      SQL.Text:='INSERT INTO produk (id_produk,nama,deskripsi,harga) VALUES('+
        QuotedStr(edtId.Text)+
        ','+QuotedStr(edtNama.Text)+
        ','+QuotedStr(edtDeskripsi.Text)+
        ','+QuotedStr(edtHarga.Text)+')';
        ExecSQL;
    end;
end;

procedure TfrmInputProduk.UbahData;
begin
with dm.qry1 do
    begin
      Active:=False;
      Close;
      SQL.Clear;
      SQL.Text:='UPDATE produk SET nama = '+ QuotedStr(edtNama.Text) +
                ', deskripsi = '+ QuotedStr(edtDeskripsi.Text) +
                ', harga = '+ QuotedStr(edtHarga.Text) +
                ' WHERE id_produk = '+ QuotedStr(edtId.Text) +'';
        ExecSQL;
    end;
end;

procedure TfrmInputProduk.Button1Click(Sender: TObject);
begin
if (edtId.Text='') or (edtNama.Text='') or (edtDeskripsi.Text='') or (edtHarga.Text='') then
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
            frmDataProduk.FormShow(Sender);
            ShowMessage('Data Tersimpan');
            frmInputProduk.Close;
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
            frmDataProduk.FormShow(Sender);
            ShowMessage('Data Tersimpan');
            frmInputProduk.Close;
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
      frmInputProduk.Close;
    end;
  end;
end;

procedure TfrmInputProduk.Button2Click(Sender: TObject);
begin
if Button1.Caption='Simpan' then
  begin
    edtId.Text:='';
    edtNama.Text:='';
    edtDeskripsi.Text:='';
    edtHarga.Text:='';
    edtId.SetFocus;
  end
else
  begin
    edtNama.Text:='';
    edtDeskripsi.Text:='';
    edtHarga.Text:='';
    edtNama.SetFocus;
  end;
end;

procedure TfrmInputProduk.edtIdKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
begin
  Button1.Click;
end;
end;

procedure TfrmInputProduk.edtNamaKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
begin
  Button1.Click;
end;
end;

procedure TfrmInputProduk.edtDeskripsiKeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#13 then
begin
  Button1.Click;
end;
end;

procedure TfrmInputProduk.edtHargaKeyPress(Sender: TObject; var Key: Char);
begin
if NOT(key in['0'..'9', #8, #13]) then
  key := #0;

if key=#13 then
begin
  Button1.Click;
end;
end;

end.
