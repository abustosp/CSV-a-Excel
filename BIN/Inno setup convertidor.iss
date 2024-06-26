; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!


#define MyAppName "Convertidor de CSV a Excel"
#define MyAppVersion "1.0.0"
#define MyAppPublisher "Agust�n Bustos Piasentini"
#define MyAppURL "https://www.agustin-bustos-piasentini.com.ar/"
#define MyAppExeName "convertidor-GUI.exe"
#define UbicacionDeExeDeAutopyToExe "F:\Proyectos Python\Scripts\CSV-a-Excel\Instaladores\convertidor-GUI"
#define PathDeLicencia "F:\Proyectos Python\Licencias\LICENSE"
#define IconoDeInstalador "F:\Papeles de trabajo\ABP\ABP-blanco-en-fondo-negro.ico"
#define NombreDeExe "Setup Convertidor de CSV a Excel"
#define SalidaDeInstalador "F:\Proyectos Python\Scripts\CSV-a-Excel\Instaladores"
#define GUID "{{97CC9EDA-B859-4CA7-8500-1EC16B14512E}" 


[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={#GUID}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DisableProgramGroupPage=yes
LicenseFile={#PathDeLicencia}
; Uncomment the following line to run in non administrative install mode (install for current user only.)
PrivilegesRequired=lowest
OutputDir={#SalidaDeInstalador}
OutputBaseFilename={#NombreDeExe}
SetupIconFile={#IconoDeInstalador}
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "{#UbicacionDeExeDeAutopyToExe}\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#UbicacionDeExeDeAutopyToExe}\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

