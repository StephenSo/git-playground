write-host "Main Branch"
$UserInput = Read-Host "Enter data input"

$FileData = Get-Content $UserInput
$i = 0
foreach ($Line in $FileData){
    $i++
    Write-Host "$($i)-$($Line)"
}