# BlockAdDomains
Configures local "hosts" file to redirect advertising domains to localhost

# How to install
You have two ways
 1) You can copy the AdDomains.txt files contents to C:\windows\system32\drivers\etc\hosts file manually
 2) press windows key and in the search box copy: 
 
powershell -Command "Start-Process powershell -Verb runAs \\"IEX (New-Object System.Net.Webclient).DownloadString('https://raw.githubusercontent.com/etsubu/BlockAdDomains/master/BlockAds.ps1') ; rollBackAds ; blockAds; echo Done. ; pause""

and press enter. UAC will pop up and request admin access which is required to edit hosts file on your system. Note that this rollbacks backup if this isn't the first time you run the command. *If this is the first time you run the command there will be red text on the screen saying C:\windows\system32\drivers\etc\hostsBack was not found. This is ok.

If you later on wish to rollback the changes you made to the hosts file you can use:

powershell -Command "Start-Process powershell -Verb runAs \\"IEX (New-Object System.Net.Webclient).DownloadString('https://raw.githubusercontent.com/etsubu/BlockAdDomains/master/BlockAds.ps1') ; rollBackAds; echo Done. ; pause""
