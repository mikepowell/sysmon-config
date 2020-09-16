@echo off
cd C:\ProgramData\sysmon
@powershell (new-object System.Net.WebClient).DownloadFile('https://raw.githubusercontent.com/mikepowell/sysmon-config/master/sysmonconfig-export.xml','C:\ProgramData\sysmon\sysmonconfig-export.xml')"
sysmon -c sysmonconfig-export.xml
rm sysmonconfig-export.xml
exit