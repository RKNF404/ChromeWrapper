param([System.String]$FilePath)

[System.String]$ChromeWrapper_Flags = '--start-maximized --no-default-browser-check'

Get-Content -Path 'C:\Program Files\Google\Chrome\Application\80-hardening-guide-flags.conf' | ForEach-Object { $ChromeWrapper_Flags += " $_" }

if ($FilePath) { $ChromeWrapper_Flags += " `"$FilePath`"" }

Start-Process -FilePath 'C:\Program Files\Google\Chrome\Application\chrome.exe' -ArgumentList $ChromeWrapper_Flags
