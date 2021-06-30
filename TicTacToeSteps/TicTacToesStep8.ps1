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


function Is-Winner
{

     $winner = $false

     #horizontal
     
     if($BoardArray[0] -eq $BoardArray[1] -and $BoardArray[1] -eq $BoardArray[2] -and $BoardArray[0] -eq $piece)
     {
    

        $winner = $true


      }

      if($BoardArray[3] -eq $BoardArray[4] -and $BoardArray[4] -eq $BoardArray[5] -and $BoardArray[3] -eq $piece)
     {
    

        $winner = $true


      }

      if($BoardArray[6] -eq $BoardArray[7] -and $BoardArray[7] -eq $BoardArray[8] -and $BoardArray[6] -eq $piece)
     {
    

        $winner = $true


      }


      #VERTICAL

      if($BoardArray[0] -eq $BoardArray[3] -and $BoardArray[3] -eq $BoardArray[6] -and $BoardArray[0] -eq $piece)
     {
    

        $winner = $true


      }


      if($BoardArray[1] -eq $BoardArray[4] -and $BoardArray[4] -eq $BoardArray[7] -and $BoardArray[1] -eq $piece)
     {
    

        $winner = $true


      }


      if($BoardArray[2] -eq $BoardArray[5] -and $BoardArray[5] -eq $BoardArray[8] -and $BoardArray[2] -eq $piece)
     {
    

        $winner = $true


      }


      #Diagonal

      if($BoardArray[0] -eq $BoardArray[4] -and $BoardArray[4] -eq $BoardArray[8] -and $BoardArray[0] -eq $piece)
     {
    

        $winner = $true


      }

      
      if($BoardArray[2] -eq $BoardArray[4] -and $BoardArray[4] -eq $BoardArray[6] -and $BoardArray[2] -eq $piece)
     {
    

        $winner = $true


      }

      Write-Output $winner


}


$count = 9
SHow-Board
$piece ='X'
" Geef je naam speler 1!"
$Player1 = Read-Host
"Geef je naam speler 2!"

$Player2 = Read-Host

$PlayerOnTurn = $Player1

while ($count -gt 0 -and !(Is-Winner))
{
    
    "Geef het nummer " +$PlayerOnTurn +"  en ik maak er een " + $piece + " van"

    [int]$nummer = Read-Host

    #als het vak al een o of een x heeft dan nog en keer vragen om invoer
    
    while($BoardArray[$nummer -1 ] -eq 'X' -or $BoardArray[$nummer -1] -eq 'O')
    {
        
        "This square has been taken"

         [int]$nummer = Read-Host
    }
    
    $BoardArray[$nummer -1] = $piece

    if(!(Is-Winner))
    {

        if($piece -eq 'X')
        {
        
            $piece = 'O'

        }
        else
        {
        
            $piece = 'X'

        }

        if($PlayerOnTurn -eq $Player1)
        {

            $PlayerOnTurn = $Player2

        }

        else
        {

            $PlayerOnTurn = $Player1

        }

    }
    SHow-Board
    $count = $count -1
}