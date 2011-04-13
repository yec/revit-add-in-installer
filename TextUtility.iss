[Setup]
AppName=Text Utility
AppVersion=1
DefaultDirName={pf}\Revit Plugins\TextUtility

[Files]
Source: "TextUtility.dll"; DestDir: "{app}"
Source: "TextUtility.addin"; DestDir: "{commonappdata}\Autodesk\Revit\Addins\2011"
Source: "modifyaddinassembly.vbs"; DestDir:"{app}"; Flags: deleteafterinstall;

[Run]
Filename: "{app}\modifyaddinassembly.vbs"; Parameters: " ""{app}\TextUtility.dll"" ""{commonappdata}\Autodesk\Revit\Addins\2011\TextUtility.addin"" ";  Flags: shellexec;


