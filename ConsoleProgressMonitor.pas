{**
 DelphiPI (Delphi Package Installer)
 Author  : ibrahim dursun (ibrahimdursun gmail)
 License : GNU General Public License 2.0
**}
unit ConsoleProgressMonitor;

interface
uses PackageInfo, ProgressMonitor;
type
  TConsoleOutputLevel = (colSilent, colBrief, colFull);
  TConsoleProgressMonitor = class(TInterfacedObject, IProgressMonitor)
  private
    fOutputLevel: TConsoleOutputLevel;
    fStartTime: TDateTime;
  published
  public
    procedure CompilerOutput(const line: string);
    procedure Finished;
    procedure Log(const text: string);
    procedure PackageProcessed(const packageInfo: TPackageInfo;
      status: TPackageStatus);
    procedure Started;
    property OutputLevel: TConsoleOutputLevel read fOutputLevel write fOutputLevel;
    
  end;

implementation
uses DateUtils, SysUtils, StrUtils, JclConsole;

procedure WriteLine(color: TJclScreenFontColor; text: string); overload;
begin
  TJclConsole.Default.ActiveScreen.Writeln(text, TJclScreenTextAttribute.Create(color,bclBlack, color <> fclWhite));
end;

procedure WriteLine(text: string=''); overload;
begin
  TJclConsole.Default.ActiveScreen.Writeln(text, TJclScreenTextAttribute.Create(fclWhite, bclBlack, false));
end;

{ TConsoleProgressMonitor }

procedure TConsoleProgressMonitor.CompilerOutput(const line: string);
begin
  if length(line) > 256 then exit;   //throws system error 87

  if OutputLevel = colSilent then exit;
  if OutputLevel = TConsoleOutputLevel.colFull then
    WriteLn(line)
  else if (Pos('Fatal:', line) > 0)  or (Pos('Error', line) > 0) then
    WriteLine(fclRed,line);
end;

procedure TConsoleProgressMonitor.Finished;
begin
  if OutputLevel = TConsoleOutputLevel.colSilent then
    exit;

  WriteLine(fclWhite, 'Completed in ' + floattostr(MilliSecondsBetween(GetTime, fStartTime)) + ' ms');
end;

procedure TConsoleProgressMonitor.Log(const text: string);
begin
 
  if OutputLevel = TConsoleOutputLevel.colFull then
  begin
    if StartsStr('-=', text)  then
      WriteLine(fclYellow, text)
    else
      WriteLine(text);
  end;
end;

procedure TConsoleProgressMonitor.PackageProcessed(
  const packageInfo: TPackageInfo; status: TPackageStatus);
begin
  if OutputLevel = TConsoleOutputLevel.colSilent then
    exit;
  case status of
    psNone: ;
    psCompiling:  
       WriteLine('[Compile] ' + packageInfo.PackageName);
    psInstalling: 
       WriteLine('[Install] ' + packageInfo.PackageName);
    psSuccess: begin
      WriteLine(fclGreen, '[Success] ' + packageInfo.PackageName); 
      WriteLine;
    end;
    psError: begin
      WriteLine(fclRed,   '[Fail   ] ' + packageInfo.PackageName);
      WriteLine;
    end;
  end;
end;

procedure TConsoleProgressMonitor.Started;
begin
  if OutputLevel = TConsoleOutputLevel.colSilent then
    exit;
  WriteLine('Starting');
  fStartTime := GetTime;
end;


end.
