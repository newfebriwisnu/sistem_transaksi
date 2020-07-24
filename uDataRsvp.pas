unit uDataRsvp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, StdCtrls, Grids, DBGrids, ComCtrls;

type
  TfrmDataRsvp = class(TForm)
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    Button1: TButton;
    DataSource1: TDataSource;
    PopupMenu1: TPopupMenu;
    Refresh1: TMenuItem;
    GroupBox2: TGroupBox;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    Label8: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Button2: TButton;
    Update1: TMenuItem;
    ResetRSVPIni1: TMenuItem;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Update1Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure ResetRSVPIni1Click(Sender: TObject);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox1Change(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure DateTimePicker1KeyPress(Sender: TObject; var Key: Char);
    procedure DateTimePicker4KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure DateTimePicker4Change(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure TampilData;
    procedure TampilDataCustom;
    procedure InputRsvp;
    procedure SetStatusRsvp;
    procedure SetStatusRsvpDB;
    procedure SudahJadi;
    procedure SudahDiambil;
    procedure ResetRsvp;
  end;

var
  frmDataRsvp: TfrmDataRsvp;

implementation

uses uDM, uDataTransaksi, uMainForm, DateUtils;

{$R *.dfm}

procedure TfrmDataRsvp.ResetRsvp;
begin
  with dm.qry2 do
      begin
      Active:=False;
      Close;
      SQL.Clear;
      SQL.Text:='sp_updateRsvp '+QuotedStr(DBGrid1.Fields[0].AsString)+'';
      ExecSQL;
      end;
end;

procedure TfrmDataRsvp.TampilData;
begin
with dm.qry1 do
  begin
    Active:=False;
    Close;
    SQL.Clear;
    SQL.Text:='SELECT TOP 25 * FROM view_Rsvp ORDER BY id DESC';
    Active:=True;
    ExecSQL;
  end;
end;

procedure TfrmDataRsvp.TampilDataCustom;
begin
with dm.qry1 do
  begin
    Active:=False;
    Close;
    SQL.Clear;
    SQL.Text:='SELECT TOP '+ComboBox1.Text+' * FROM view_Rsvp ORDER BY id DESC';
    Active:=True;
    ExecSQL;
  end;
end;

procedure TfrmDataRsvp.InputRsvp;
begin
  with dm.qry2 do
      begin
      Active:=False;
      Close;
      SQL.Clear;
      SQL.Text:='sp_insertRsvp '+
                ''+QuotedStr('RSVP-'+Edit2.Text)+','+
                ''+QuotedStr(Edit2.Text)+'';
      ExecSQL;
      end;
end;

procedure TfrmDataRsvp.SetStatusRsvp;
begin
  with dm.qry2 do
    begin
      Active:=False;
      Close;
      SQL.Clear;
      SQL.Text:='sp_SetStatusRsvp '+QuotedStr(Edit2.Text)+'';
      ExecSQL;
    end;
end;

procedure TfrmDataRsvp.SetStatusRsvpDB;
begin
  with dm.qry2 do
    begin
      Active:=False;
      Close;
      SQL.Clear;
      SQL.Text:='sp_SetStatusRsvp '+QuotedStr(DBGrid1.Fields[0].AsString)+'';
      ExecSQL;
    end;
end;

procedure TfrmDataRsvp.SudahJadi;
begin
with dm.qry2 do
    begin
      Active:=False;
      Close;
      SQL.Clear;
      SQL.Text:='sp_updateRsvpJadi '+
                ''+QuotedStr(DBGrid1.Fields[0].AsString)+'';
      ExecSQL;
      Close;
    end;
end;

procedure TfrmDataRsvp.SudahDiambil;
begin
with dm.qry2 do
    begin
      Active:=False;
      Close;
      SQL.Clear;
      SQL.Text:='sp_updateRsvpDiambil '+
                ''+QuotedStr(DBGrid1.Fields[0].AsString)+'';
      ExecSQL;
      Close;
    end;
end;

procedure TfrmDataRsvp.FormShow(Sender: TObject);
begin
DateTimePicker1.MinDate:=Today;
DateTimePicker1.Date:=DateTimePicker1.MinDate;
DateTimePicker1.MinDate:=TRUNCATE_EXISTING;

DateTimePicker4.MinDate:=Today;
DateTimePicker4.Date:=DateTimePicker4.MinDate;
DateTimePicker4.MinDate:=TRUNCATE_EXISTING;

ComboBox1.Text:='25';
Edit1.Text:='';
Edit2.Text:='';
Edit1.SetFocus;
TampilData;
end;

procedure TfrmDataRsvp.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if Key=#39 then
  Key:=#0;

if Key=#27 then
  Close;
end;

procedure TfrmDataRsvp.Button1Click(Sender: TObject);
begin
FormShow(Sender);
end;

procedure TfrmDataRsvp.Edit1Change(Sender: TObject);
begin
with dm.qry1 do
  begin
    Active:=False;
    Close;
    SQL.Clear;
    SQL.Text:='SELECT * FROM view_Rsvp WHERE id_transaksi LIKE ''%'+Edit1.Text+'%''';
    Active:=True;
    ExecSQL;
  end;
end;

procedure TfrmDataRsvp.Button2Click(Sender: TObject);
begin
with dm.qry2 do
  begin
    Close;
    SQL.Text:='SELECT id_transaksi FROM transaksi WHERE '+
              'id_transaksi = '+QuotedStr(Edit2.Text)+'';
    Open;
    if dm.qry2.RecordCount=0 then
      begin
        ShowMessage('Transaksi Tidak Ada');
        FormShow(Sender);
        Edit2.SetFocus;
      end
    else
      begin
        Close;
        SQL.Text:='SELECT id_transaksi FROM rsvp WHERE '+
                  'id_transaksi = '+QuotedStr(Edit2.Text)+'';
        Open;
        if dm.qry2.RecordCount=0 then
          begin
            try dm.con1.BeginTrans;
                InputRsvp;
                setStatusRsvp;
                dm.con1.CommitTrans;
                FormShow(Sender);
                ShowMessage('Data Tersimpan');
            except dm.con1.RollbackTrans;
                FormShow(Sender);
                ShowMessage('Gagal Tersimpan');
          end;
        end
          else
        begin
          ShowMessage('Data Sudah Ada');
          FormShow(Sender);
          Edit2.SetFocus;
        end;
      end;
  end;
end;

procedure TfrmDataRsvp.Update1Click(Sender: TObject);
begin
if dm.qry1.RecordCount=0 then
  begin
    ShowMessage('Data Tidak Ada');
    FormShow(Sender);
  end
else
  begin
    with dm.qry2 do
      begin
        Close;
        SQL.Text:='SELECT sudah_jadi, sudah_diambil FROM rsvp WHERE id_transaksi = '+
                  ''+QuotedStr(DBGrid1.Fields[0].AsString)+'';
        Open;
        if FieldByName('sudah_jadi').AsString='-' then
        begin
        if(Application.MessageBox('Update Sudah Jadi?','PESAN',MB_YESNO+MB_ICONWARNING)=ID_YES) then
          begin
            try dm.con1.BeginTrans;
                SudahJadi;
                SetStatusRsvpDB;
                dm.con1.CommitTrans;
                FormShow(Sender);
                ShowMessage('Data Tersimpan');
            except dm.con1.RollbackTrans;
                FormShow(Sender);
                ShowMessage('Gagal Tersimpan');
            end;
          end
      end
      else if FieldByName('sudah_jadi').AsString='OK' then
        begin
          if(Application.MessageBox('Update Sudah Diambil?','PESAN',MB_YESNO+MB_ICONWARNING)=ID_YES) then
            begin
            try dm.con1.BeginTrans;
                SudahDiambil;
                SetStatusRsvpDB;
                dm.con1.CommitTrans;
                FormShow(Sender);
                ShowMessage('Data Tersimpan');
            except dm.con1.RollbackTrans;
                FormShow(Sender);
                ShowMessage('Gagal Tersimpan');
            end;
        end
      end
      else if FieldByName('sudah_diambil').AsString='OK' then
        begin
          ShowMessage('Sudah Jadi dan Sudah Diambil');
          FormShow(Sender);
        end
      else
        begin
          ShowMessage('Kesalahan');
          FormShow(Sender);
        end
      end;
  end;
end;

procedure TfrmDataRsvp.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if NOT(key in['0'..'9', #8, #13]) then
  key := #0;

if Key=#13 then
  Button2.Click;
end;

procedure TfrmDataRsvp.ResetRSVPIni1Click(Sender: TObject);
begin
if dm.qry1.RecordCount=0 then
  begin
    ShowMessage('Data Tidak Ada');
    FormShow(Sender);
  end
else
  begin
    if(Application.MessageBox('Reset Data Ini?','PESAN',MB_YESNO+MB_ICONWARNING)=ID_YES) then
        begin
        try dm.con1.BeginTrans;
            ResetRsvp;
            SetStatusRsvpDB;
            dm.con1.CommitTrans;
            FormShow(Sender);
            ShowMessage('Data Tersimpan');
        except dm.con1.RollbackTrans;
            FormShow(Sender);
            ShowMessage('Gagal Tersimpan');
        end;
    end;
  end;
end;

procedure TfrmDataRsvp.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
Key:=#0;
end;

procedure TfrmDataRsvp.ComboBox1Change(Sender: TObject);
begin
TampilDataCustom;
end;

procedure TfrmDataRsvp.Refresh1Click(Sender: TObject);
begin
FormShow(Sender);
end;

procedure TfrmDataRsvp.DateTimePicker1KeyPress(Sender: TObject;
  var Key: Char);
begin
Key:=#0;
end;

procedure TfrmDataRsvp.DateTimePicker4KeyPress(Sender: TObject;
  var Key: Char);
begin
Key:=#0;
end;

procedure TfrmDataRsvp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//MainForm.Enabled:=True;
end;

procedure TfrmDataRsvp.DateTimePicker1Change(Sender: TObject);
begin
with dm.qry1 do
  begin
    Active:=False;
    Close;
    SQL.Clear;
    SQL.Text:='SELECT * FROM view_Rsvp WHERE tanggal_foto between '+
              ''+QuotedStr(FormatDateTime('yyyy-mm-dd',DateTimePicker1.Date))+' AND '+
              ''+QuotedStr(FormatDateTime('yyyy-mm-dd',DateTimePicker4.Date))+' '+
              'ORDER BY tanggal_foto ASC';
    Active:=True;
    ExecSQL;
  end;
end;

procedure TfrmDataRsvp.DateTimePicker4Change(Sender: TObject);
begin
with dm.qry1 do
  begin
    Active:=False;
    Close;
    SQL.Clear;
    SQL.Text:='SELECT * FROM view_Rsvp WHERE tanggal_foto between '+
              ''+QuotedStr(FormatDateTime('yyyy-mm-dd',DateTimePicker1.Date))+' AND '+
              ''+QuotedStr(FormatDateTime('yyyy-mm-dd',DateTimePicker4.Date))+' '+
              'ORDER BY tanggal_foto ASC';
    Active:=True;
    ExecSQL;
  end;
end;

procedure TfrmDataRsvp.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if Key=#27 then
  Close;
end;

end.

