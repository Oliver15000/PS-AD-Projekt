
$weiter = 1
while($weiter -eq 1){

Write-Host "`nFolgende Aufgaben können erledigt werden: 
1: Benutzer verwalten
2: Grupppen verwalten
3: Informationen zu AD Benutzer erhalten
x: Programm beenden"


$Eingabe1 = Read-Host -prompt "Aufgabe auswählen "


switch ($Eingabe1) {
    1 { Write-Host "`nAufgaben für Benutzer verwalten: 
1: Benutzer erstellen
2: Benutzer deaktivieren
3: Benutzer löschen
4: einzelner Benutzer entsperren
5: einzelner Benutzer aktivieren
6: einzelner Benutzer Passwort neu setzen"
$Eingabe2 = Read-Host -prompt "Aufgabe auswählen "
switch($Eingabe2){
        1{ .\Nr1_Bulk_Funktionen\1a_Erstellen_Deaktivieren_AD-Accounts\Benutzer_erstellen.ps1 }
        2{ .\Nr1_Bulk_Funktionen\1a_Erstellen_Deaktivieren_AD-Accounts\Benutzer_deaktivieren.ps1}
        3{ .\Nr1_Bulk_Funktionen\1a_Erstellen_Deaktivieren_AD-Accounts\Benutzer_loeschen.ps1}
        4{ .\Nr2_Sicherheitsrelevante_Funktionen\2b_Einzelne_AD-Benutzer\Benutzer_entsperren.ps1}
        5{ .\Nr2_Sicherheitsrelevante_Funktionen\2b_Einzelne_AD-Benutzer\Benutzer_aktivieren.ps1}
        6{ .\Nr2_Sicherheitsrelevante_Funktionen\2b_Einzelne_AD-Benutzer\Benutzer_neuPW.ps1}
        Default{"falsche Eingabe"}
    }
 }
    2 { Write-Host "`nAufgaben für Gruppen verwalten: 
 1: Gruppen erstellen
 2: Gruppe löschen"
 $Eingabe2 = Read-Host -prompt "Aufgabe auswählen "
 switch($Eingabe2){
        1{ .\Nr1_Bulk_Funktionen\1b_Erstellen_Loeschen_AD-Gruppen\Gruppe_erstellen.ps1 }
        2{ .\Nr1_Bulk_Funktionen\1b_Erstellen_Loeschen_AD-Gruppen\Gruppe_loeschen.ps1}
        Default{"falsche Eingabe"}
     }
  }

    3 { Write-Host "`nInformationen zu AD Benutzer erhalten: 
1: Benutzer ohne Passwort
2: Benutzer, bei denen Passwort nicht abläuft
3: deaktivierte Benutzer
4: gesperrte Benutzer"
$Eingabe2 = Read-Host -prompt "Aufgabe auswählen "
switch($Eingabe2){
        1{.\Nr2_Sicherheitsrelevante_Funktionen\2c_Uebersicht_AD-Benutzer\kein_PW.ps1}
        2{.\Nr2_Sicherheitsrelevante_Funktionen\2c_Uebersicht_AD-Benutzer\kein_PW_lease.ps1}
        3{.\Nr2_Sicherheitsrelevante_Funktionen\2c_Uebersicht_AD-Benutzer\User_deaktiviert.ps1}
        4{.\Nr2_Sicherheitsrelevante_Funktionen\2c_Uebersicht_AD-Benutzer\User_gesperrt.ps1}
        Default{"falsche Eingabe"}
    }
}

    x{"Programm beendet" 
        $weiter = 0
    }
    Default {"falsche Eingabe"}
}



}