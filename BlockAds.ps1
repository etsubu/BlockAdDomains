function blockAds
{
	$a = ${env:windir} + '\system32\drivers\etc\hosts'
	$b = ${env:windir} + '\system32\drivers\etc\hostsBackup'
	Copy-Item -Path $a -Destination $b
	$c = "\n" + [System.Text.Encoding]::ASCII.GetString((New-Object System.Net.WebClient).DownloadData('https://raw.githubusercontent.com/etsubu/BlockAdDomains/master/AdDomains.txt'))
	Add-Content $a $c
}

function rollBackAds
{
	$a = ${env:windir} + '\system32\drivers\etc\hosts'
	$b = ${env:windir} + '\system32\drivers\etc\hostsBackup'
	Copy-Item -Path $b -Destination $a -Force
	Remove-Item -Path $b -Force
}
