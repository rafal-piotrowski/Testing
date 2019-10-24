$tablica = @("folder1\*.txt","folder2\*.txt","folder202\*.txt")
$tablica2 = @("folder1","folder2","folder202")

function HowMany ([string]$path) {
    $counts = Get-Content -Path $path | Measure-Object -Line -Word -Character
    
    Write-Host("Ilości dla pliku "+$path)
    Write-Host("---------------------------------------")
    Write-Host("- Linie: "+$counts.Lines)
    Write-Host("- Wyrazy: "+$counts.Words)
    Write-Host("- Znaki: "+$counts.Characters)

    Write-Host("***************************************")
}
function HowMany2 ([string]$path) {
    cd $path
    dir . -include *.txt -rec | gc | Measure-Object -Line -Word -Character
}

for($i = 0; $i -lt $tablica.length; $i++)
{
    HowMany $tablica[$i]
}

# foreach ($path in $tabelaPath) {
#     HowMany2 -path $path
# }