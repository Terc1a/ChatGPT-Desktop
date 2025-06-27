[Setup]
AppName=ChatGPT Client
AppVersion=1.0
DefaultDirName={localappdata}\ChatGPTClient
DefaultGroupName=ChatGPT Client
OutputBaseFilename=chatgpt_webview_installer
Compression=lzma
SolidCompression=yes

[Files]
; Основной исполняемый файл
Source: "C:\Users\xxc45\Desktop\prjcts\chatgpt_client\output\output\chatgpt_webview\chatgpt_webview.exe"; DestDir: "{app}"; Flags: ignoreversion
; Библиотеки и зависимости
Source: "C:\Users\xxc45\Desktop\prjcts\chatgpt_client\output\output\chatgpt_webview\_internal\*"; DestDir: "{app}\_internal"; Flags: recursesubdirs createallsubdirs

[Icons]
; Ярлык на рабочем столе
Name: "{commondesktop}\ChatGPT Client"; Filename: "{app}\chatgpt_webview.exe"; WorkingDir: "{app}"

[Run]
; Запустить после установки
Filename: "{app}\chatgpt_webview.exe"; Description: "Запустить ChatGPT Client"; Flags: nowait postinstall skipifsilent
