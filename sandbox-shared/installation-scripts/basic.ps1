Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'));

# Set cache location to host machine
choco config set cacheLocation C:\Users\WDAGUtilityAccount\Desktop\sandbox-shared\chocolatey-cache;

# Install stuff
choco install vscode git nodejs microsoft-edge-insider winrar filezilla --limit-output --confirm;

# Wait for keypress so user can read logs
write-host "Press any key to continue..."
[void][System.Console]::ReadKey($true)