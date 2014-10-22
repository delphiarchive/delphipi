; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "DelphiPI"
#define MyAppVerName "DelphiPI 0.73"
#define MyAppPublisher "http://www.idursun.com"
#define MyAppURL "http://bitbucket.org/idursun/delphipi"
#define MyAppExeName "DelphiPI.exe"

[Setup]
AppName={#MyAppName}
AppVerName={#MyAppVerName}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
LicenseFile=LICENSE.txt
OutputBaseFilename=delphipi.0.73.setup
Compression=lzma/ultra
SolidCompression=true

[Languages]
Name: eng; MessagesFile: compiler:Default.isl
;Name: tr; MessagesFile: compiler:Languages\Turkish.isl

[Tasks]
Name: desktopicon; Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked

[Files]
Source: ..\DelphiPI.exe; DestDir: {app}; Flags: ignoreversion
Source: LICENSE.txt; DestDir: {app}; Flags: ignoreversion
Source: README.TXT; DestDir: {app}; Flags: ignoreversion
;Source: ..\locale\tr\LC_MESSAGES\default.mo; DestDir: {app}\locale\tr\LC_MESSAGES; DestName: default.mo; Flags: ignoreversion; Languages: tr

[Icons]
Name: {group}\{#MyAppName}; Filename: {app}\{#MyAppExeName}
Name: {group}\{cm:UninstallProgram,{#MyAppName}}; Filename: {uninstallexe}
Name: {userdesktop}\{#MyAppName}; Filename: {app}\{#MyAppExeName}; Tasks: desktopicon

[Run]
Filename: {app}\{#MyAppExeName}; Description: {cm:LaunchProgram,{#MyAppName}}; Flags: nowait postinstall skipifsilent
