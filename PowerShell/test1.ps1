$zmienna;
#  = wartosc;
$tablica = @("jeden","dwa","trzy")
# $tablica2 = 1,2,3,4;
# $tablica3 = @(1,2,3,4);
# $tablica4 = @("elem1","elem2","elem3");

for($i = 0; $i -lt $tablica.length; $i++)
{
    write-host($tablica[$i])
}

foreach ($element in $tablica)
{
    write-host($element)
}

$tablica | ForEach-Object { write-host($_) }

$counter = 0

while($counter -lt $tablica.length)
{
    write-host($tablica[$counter++])
    # $counter += 1
}

$counter = 0

do {
    write-host($counter)
    write-host($tablica[$counter])
    $counter += 1
} while ($counter -lt $tablica.length)

$zmienna2 = 9

if($zmienna2 -lt 10) {
    write-host("mniej niż dycha")
} elseif($zmienna2 -eq 10) {
    write-host("strzał w dychę")
} else {
    write-host("pudło")
}

Get-Content './file3.txt'
# to jest testowy SKRYPT