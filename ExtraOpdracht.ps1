$usersToImport = Import-Csv -Path C:\app\users.csv


foreach($item in $usersToImport)
{

    $SecurePassword = ConvertTo-SecureString -String 'P@ssw0rd' -AsPlainText -Force

    New-LocalUser -Name $item.naam -Description $item.afdeling -Password $SecurePassword


}