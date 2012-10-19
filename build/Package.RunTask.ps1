$date = get-date
$dy = $date.DayOfYear
$fy = "{0:%y}" -f $date
$task = "NuGetPack"
$version = "1.4.0." + $fy + $dy

if($task -eq $null) {
	$task = read-host "Enter Task"
}

$scriptPath = $(Split-Path -parent $MyInvocation.MyCommand.path)

. .\build\psake.ps1 -scriptPath $scriptPath -t $task -properties @{ version=$version }