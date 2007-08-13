{**
 DelphiPI (Delphi Package Installer)
 Author  : ibrahim dursun (t-hex) thex [at] thexpot ((dot)) net
 License : GNU General Public License 2.0
**}
unit FormMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JclBorlandTools, CheckLst, ComCtrls, ActnList, ImgList,
  ToolWin, PackageInfo, ExtCtrls;

type
  TfrmMain = class(TForm)
    packageListView: TListView;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ImageList: TImageList;
    ToolButton2: TToolButton;
    ActionList: TActionList;
    actSelectFolder: TAction;
    actCompile: TAction;
    actExit: TAction;
    ToolButton3: TToolButton;
    actAbout: TAction;
    ToolButton4: TToolButton;
    Memo: TMemo;
    Splitter1: TSplitter;
    ToolButton5: TToolButton;
    actInstall: TAction;
    Panel1: TPanel;
    lblPackage: TLabel;
    lblFile: TLabel;
    ProgressBar: TProgressBar;
    procedure actSelectFolderExecute(Sender: TObject);
    procedure actExitExecute(Sender: TObject);
    procedure packageListViewInfoTip(Sender: TObject; Item: TListItem;
      var InfoTip: string);
    procedure actCompileUpdate(Sender: TObject);
    procedure actCompileExecute(Sender: TObject);
    procedure actAboutExecute(Sender: TObject);
  private
    FPackageList: PackageInfo.TPackageList;
    inst : TJclBorRADToolInstallation;
    procedure DisplayPackageList(const PackageList: TPackageList);
    procedure AddSourcePaths;
  protected
    procedure handletext(const text:string);
    procedure BeginCompile;
    procedure EndCompile;
  end;

var
  frmMain: TfrmMain;

implementation
{$R *.dfm}
uses  JclSysUtils,  StrUtils, FileCtrl, FormAbout, FormOptions,
      PackageCompiler;

procedure TfrmMain.actAboutExecute(Sender: TObject);
begin
  Application.CreateForm(TfrmAbout,frmAbout);
  frmAbout.ShowModal;
  frmAbout.Free;
end;

procedure TfrmMain.actCompileExecute(Sender: TObject);
var
  i: Integer;
  info : TPackageInfo;
  includes: String;
  compiler: TPackageCompiler;
begin
  AddSourcePaths;
  inst.OutputCallback := self.handletext;
  BeginCompile;
  compiler := TPackageCompiler.Create(inst);
  try
    for i := 0 to packageListView.Items.Count - 1 do begin
      if not packageListView.Items[i].Checked then continue;
      ProgressBar.StepIt;
      info := TPackageInfo(packageListView.Items[i].Data);
      lblPackage.Caption := info.PackageName;
      if compiler.CompilePackage(info) and (not info.RunOnly) then
        compiler.InstallPackage(info);
    end;
  finally
    EndCompile;
    compiler.Free;
  end;
end;

procedure TfrmMain.actCompileUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := packageListView.Items.Count > 0;
end;

procedure TfrmMain.actExitExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmMain.actSelectFolderExecute(Sender: TObject);
var
  directory: string;
begin
  if SelectDirectory('Select the folder where packages are','',directory) then begin
    Application.CreateForm(TfrmOptions, frmOptions);
    try
      if frmOptions.ShowModal = mrOk then begin
        inst := frmOptions.Installer;
        directory := directory +'\' + frmOptions.Pattern;
        FPackageList := TPackageList.LoadFromFolder(directory);
        FPackageList.SortList;
        DisplayPackageList(FPackageList);
      end;
    finally
      frmOptions.Free;
    end;
  end;
end;

procedure TfrmMain.DisplayPackageList(const PackageList: TPackageList);
var
  info : TPackageInfo;
  I: Integer;
begin
  packageListView.Clear;
  packageListView.Items.BeginUpdate;
  try
    for I := 0 to PackageList.Count - 1 do begin
      info := PackageList[i];
      with packageListView.Items.Add do begin
        Caption := info.Description;
        if Caption = '' then
          Caption := '<No Description>';
        
        SubItems.Add(info.PackageName);
        if info.RunOnly then
          SubItems.Add('runtime')
        else
          SubItems.Add('design');
        Checked := True;
        Data := info;
      end;
    end;
  finally
    packageListView.Items.EndUpdate;
  end;
end;


procedure TfrmMain.BeginCompile;
var
  total : integer;
  i : integer;
begin
  total := 0;
  for I := 0 to packageListView.Items.Count - 1 do
    if packageListView.Items[i].Checked then inc(total);
  ProgressBar.Max := total;
  ProgressBar.Visible := true;
end;

procedure TfrmMain.EndCompile;
begin
  lblPackage.Caption :='';
  lblFile.Caption :='';
  ProgressBar.Visible := false;
end;

procedure TfrmMain.handletext(const text: string);
var
  S : String;
begin
 S := Trim(Text);
  if S[Length(S)] =')' then begin
     lblFile.Caption := ExtractFileName(S);
  end else
    memo.lines.add(text);
  Application.ProcessMessages;
end;

procedure TfrmMain.AddSourcePaths;
var
  SourcePaths: TStringList;
  i: Integer;
begin
  SourcePaths := TStringList.Create;
  try
    FPackageList.GetSourceList(SourcePaths);
    memo.Lines.Assign(SourcePaths);
    for I := 0 to SourcePaths.Count - 1 do
    begin
      inst.AddToLibrarySearchPath(SourcePaths[i]);
    end;
  finally
    SourcePaths.Free;
  end;
end;

procedure TfrmMain.packageListViewInfoTip(Sender: TObject; Item: TListItem;
  var InfoTip: string);
var
  info : TPackageInfo;
begin
  info := TPackageInfo(Item.Data);
  InfoTip := 'Requires:'#13#10 + info.Requires.Text;
end;

end.
