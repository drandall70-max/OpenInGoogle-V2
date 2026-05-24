; Inno Setup script for OpenInGoogle
#define MyAppName "OpenInGoogle"
#define MyAppVersion "2.0.0"
#define MyAppPublisher "David Randall"
#define MyAppExeName "OpenInGoogle.exe"

[Setup]
AppId={{7B5633BC-22F3-4E7D-962B-4B0F63C9B8D1}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultDirName={autopf}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
OutputDir=..\release
OutputBaseFilename=OpenInGoogleSetup-v{#MyAppVersion}
Compression=lzma
SolidCompression=yes
WizardStyle=modern
PrivilegesRequired=lowest
UninstallDisplayIcon={app}\{#MyAppExeName}
ChangesAssociations=yes

[Tasks]
Name: "make_default"; Description: "Make OpenInGoogle the default app for Office files so double-click opens in Google"; GroupDescription: "Default file opening:"; Flags: checkedonce

[Dirs]
Name: "{userappdata}\OpenInGoogle"

[Files]
Source: "..\dist\OpenInGoogle.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\SETUP_FOR_USERS.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\OBTAIN_GOOGLE_CREDENTIALS_BEGINNER_GUIDE.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\SECURITY_AND_PRIVACY.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\TROUBLESHOOTING.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\LICENSE.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\credentials-folder\SAVE_YOUR_GOOGLE_CREDENTIALS_HERE.txt"; DestDir: "{userappdata}\OpenInGoogle"; Flags: ignoreversion

[Icons]
Name: "{group}\OpenInGoogle"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\Setup Google Credentials"; Filename: "{app}\{#MyAppExeName}"; Parameters: "--setup-credentials"
Name: "{group}\Open Credentials Folder"; Filename: "{app}\{#MyAppExeName}"; Parameters: "--open-credentials-folder"
Name: "{group}\Setup Instructions"; Filename: "{sys}\notepad.exe"; Parameters: """{app}\SETUP_FOR_USERS.txt"""
Name: "{group}\Beginner Credential Guide"; Filename: "{sys}\notepad.exe"; Parameters: """{app}\OBTAIN_GOOGLE_CREDENTIALS_BEGINNER_GUIDE.txt"""
Name: "{group}\Security and Privacy"; Filename: "{sys}\notepad.exe"; Parameters: """{app}\SECURITY_AND_PRIVACY.txt"""
Name: "{group}\Troubleshooting"; Filename: "{sys}\notepad.exe"; Parameters: """{app}\TROUBLESHOOTING.txt"""
Name: "{group}\Uninstall OpenInGoogle"; Filename: "{uninstallexe}"

[Registry]
Root: HKCU; Subkey: "Software\OpenInGoogle\Capabilities"; ValueType: string; ValueName: "ApplicationName"; ValueData: "OpenInGoogle"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\OpenInGoogle\Capabilities"; ValueType: string; ValueName: "ApplicationDescription"; ValueData: "Open Microsoft Office files in Google Docs, Sheets, or Slides"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\RegisteredApplications"; ValueType: string; ValueName: "OpenInGoogle"; ValueData: "Software\OpenInGoogle\Capabilities"; Flags: uninsdeletevalue

Root: HKCU; Subkey: "Software\OpenInGoogle\Capabilities\FileAssociations"; ValueType: string; ValueName: ".doc"; ValueData: "OpenInGoogle.doc"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\OpenInGoogle\Capabilities\FileAssociations"; ValueType: string; ValueName: ".docx"; ValueData: "OpenInGoogle.docx"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\OpenInGoogle\Capabilities\FileAssociations"; ValueType: string; ValueName: ".rtf"; ValueData: "OpenInGoogle.rtf"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\OpenInGoogle\Capabilities\FileAssociations"; ValueType: string; ValueName: ".xls"; ValueData: "OpenInGoogle.xls"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\OpenInGoogle\Capabilities\FileAssociations"; ValueType: string; ValueName: ".xlsx"; ValueData: "OpenInGoogle.xlsx"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\OpenInGoogle\Capabilities\FileAssociations"; ValueType: string; ValueName: ".xlsm"; ValueData: "OpenInGoogle.xlsm"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\OpenInGoogle\Capabilities\FileAssociations"; ValueType: string; ValueName: ".ppt"; ValueData: "OpenInGoogle.ppt"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\OpenInGoogle\Capabilities\FileAssociations"; ValueType: string; ValueName: ".pptx"; ValueData: "OpenInGoogle.pptx"; Flags: uninsdeletekey

Root: HKCU; Subkey: "Software\Classes\OpenInGoogle.doc"; ValueType: string; ValueName: ""; ValueData: "Microsoft Word Document"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\OpenInGoogle.doc\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\OpenInGoogle.docx"; ValueType: string; ValueName: ""; ValueData: "Microsoft Word Document"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\OpenInGoogle.docx\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\OpenInGoogle.rtf"; ValueType: string; ValueName: ""; ValueData: "Rich Text Document"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\OpenInGoogle.rtf\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\OpenInGoogle.xls"; ValueType: string; ValueName: ""; ValueData: "Microsoft Excel Worksheet"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\OpenInGoogle.xls\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\OpenInGoogle.xlsx"; ValueType: string; ValueName: ""; ValueData: "Microsoft Excel Worksheet"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\OpenInGoogle.xlsx\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\OpenInGoogle.xlsm"; ValueType: string; ValueName: ""; ValueData: "Microsoft Excel Macro-Enabled Worksheet"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\OpenInGoogle.xlsm\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\OpenInGoogle.ppt"; ValueType: string; ValueName: ""; ValueData: "Microsoft PowerPoint Presentation"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\OpenInGoogle.ppt\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\OpenInGoogle.pptx"; ValueType: string; ValueName: ""; ValueData: "Microsoft PowerPoint Presentation"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Classes\OpenInGoogle.pptx\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey

; Attempt current-user default associations if installer task is selected. Windows 11 may still require confirmation.
Root: HKCU; Subkey: "Software\Classes\.doc"; ValueType: string; ValueName: ""; ValueData: "OpenInGoogle.doc"; Tasks: make_default
Root: HKCU; Subkey: "Software\Classes\.docx"; ValueType: string; ValueName: ""; ValueData: "OpenInGoogle.docx"; Tasks: make_default
Root: HKCU; Subkey: "Software\Classes\.rtf"; ValueType: string; ValueName: ""; ValueData: "OpenInGoogle.rtf"; Tasks: make_default
Root: HKCU; Subkey: "Software\Classes\.xls"; ValueType: string; ValueName: ""; ValueData: "OpenInGoogle.xls"; Tasks: make_default
Root: HKCU; Subkey: "Software\Classes\.xlsx"; ValueType: string; ValueName: ""; ValueData: "OpenInGoogle.xlsx"; Tasks: make_default
Root: HKCU; Subkey: "Software\Classes\.xlsm"; ValueType: string; ValueName: ""; ValueData: "OpenInGoogle.xlsm"; Tasks: make_default
Root: HKCU; Subkey: "Software\Classes\.ppt"; ValueType: string; ValueName: ""; ValueData: "OpenInGoogle.ppt"; Tasks: make_default
Root: HKCU; Subkey: "Software\Classes\.pptx"; ValueType: string; ValueName: ""; ValueData: "OpenInGoogle.pptx"; Tasks: make_default

[Run]
Filename: "{sys}\notepad.exe"; Parameters: """{app}\SETUP_FOR_USERS.txt"""; Description: "Open setup instructions"; Flags: postinstall skipifsilent
Filename: "{app}\{#MyAppExeName}"; Parameters: "--setup-credentials"; Description: "Start Google credentials setup"; Flags: postinstall skipifsilent
