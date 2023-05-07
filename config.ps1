<#
.SYNOPSIS
Feste Angaben, welche man braucht, wo sachen gespeichert sind.
.DESCRIPTION
Es gibt sehr vieles, was sich ändern kann. Damit man nicht alles an jedem Ort einzel ändern muss kann man alles
nur hier ändern und die Dateien holen sich die Informationen von hier
.INPUTS
Ob man Info brauch oder einen Pfad.
Die richtige stelle im Array oder in der Hashtable
.PARAMETER Was
Dieser Parameter ist, ob man einen Pfad oder eine Info braucht.
Pfade
Infos
.PARAMETER genau
Welche Position man braucht in dem Array oder Hashtable. beide durchnummeriert
0. Alle Schueler csv Datei
1. Initalenpasswort
2. LogFileUser
3. LogFileGroup
4. Klassenordner

1. ouPfad
2. ouLernende
3. ouKlasse


#>

[string]$Was = Read-Host  -prompt "Pfade oder Info"
[Int16]$genau = Read-Host -Prompt "Pfade:0-4 oder Info:1-3"

$Pfade = @("","","","")

$Info = @{
    1 = ""
    2 = ""
    3 = ""
}
if ($was -eq "Pfade" ) {
   return $Pfade[$genau]}
elseif ($genau -eq "Info") {
    return $Info[$genau]
}
else {
    Write-Host "falsche eingabe. (Pfade oder Info möglich)"
}




