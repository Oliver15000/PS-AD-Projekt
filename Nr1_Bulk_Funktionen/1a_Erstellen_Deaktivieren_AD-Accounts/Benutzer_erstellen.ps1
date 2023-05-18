Write-Host "Benutzer erstellen"


function Import_Benutzer {
    
        $path = Read-Host -Prompt "Pfadangabe ohne xml endung"
        $path1 = $path
        $path1+=".xml" 
        $path2 = $path
        $path2 += ".csv"
        $import = Import-Clixml -path ($path1) -WarningAction Stop | out-file -Path ($path2) 

       (Get-Content $path2 | Select-Object -Skip 1) | Set-Content $path2
    $import = Import-Csv -Path ($path2) -Delimiter ";" 
  Remove-Item -Path ($path2) 
$import | erstellen 

}

function erstellen {
   
    process{
        if ($_.name -like "*-*") {
            
        }
        else {
        
        
       write $_.Name
        [String]$display = ($_.Vorname)
        $display += " "
        $display += ($_.Name)
        New-ADUser -name $_.Benutzername -path AD:\"OU=Schueler, DC=powershell,DC=dreck" 
        Set-ADUser  -UserPrincipalName ($_.Benutzername) -DisplayName ($display) -Enabled $true -GivenName ($_.Vorname) -Surname ($_.Name) -PasswordNotRequired $true
    }}
    end{
        Get-ADUser -Filter *
    }

    
}
Import_Benutzer