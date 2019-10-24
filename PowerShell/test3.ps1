function Add-Numbers {
    param (
        [int]$first, [int]$second
    )
    write-host($first + $second)
}

function HowMany ([string]$path) {
    $counts = Get-Content -Path $path | Measure-Object -Line -Word -Character
    
    Write-Host("Ilości dla pliku "+$path)
    Write-Host("---------------------------------------")
    Write-Host("- Linie: "+$counts.Lines)
    Write-Host("- Wyrazy: "+$counts.Words)
    Write-Host("- Znaki: "+$counts.Characters)

    Write-Host("***************************************")
}

HowMany 'folder1\file.txt'
# $counts = Get-Content -Path folder1\file.txt | Measure-Object -Line -Word -Character
# write-host($counts.Words)
# write-host($counts.Characters)
