write-host "Main Branch"

$UserInput = $null
while ((-not $UserInput) -or (-not (Test-Path $UserInput))) {
    $UserInput = Read-Host "Enter data input"
} 
$FileData = Get-Content $UserInput

$i = 0
foreach ($Line in $FileData){
    $i++
    Write-Host "$($i)-$($Line)"
}
while ($SelectLine -gt $i -or $SelectLine -lt 1){
    try {[int]$SelectLine = Read-Host -Prompt "Enter Line# to edit"}
    catch {}
}
Write-Host "`nLine selected: $($FileData[$SelectLine-1])`n"

Write-Host "Is this ok?"