$BoardArray = @('1','2','3','4','5','6','7','8','9')


function SHow-Board
{
    Write-Host "-------------"
    Write-Host "|"$BoardArray[0] "|" $BoardArray[1]"|" $BoardArray[2] "|"
    Write-Host "-------------"
    Write-Host "|"$BoardArray[3] "|" $BoardArray[4]"|" $BoardArray[5] "|"
    Write-Host "-------------"
    Write-Host "|"$BoardArray[6] "|" $BoardArray[7]"|" $BoardArray[8] "|"
    Write-Host "-------------"

}

$count = 9
SHow-Board
while ($count -gt 0)
{

    "Geef het nummer en ik maak er een 'x' van"

    [int]$nummer = Read-Host

    $BoardArray[$nummer -1] = 'X'

    SHow-Board
    $count = $count -1
}