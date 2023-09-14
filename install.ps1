<powershell>

# Download the VSCode installer

$vscodeInstallerUrl = "https://aka.ms/win32-x64-user-stable"

$vscodeInstallerPath = "$env:TEMP\vscode_installer.exe"

Invoke-WebRequest -Uri $vscodeInstallerUrl -OutFile $vscodeInstallerPath

 

# Install VSCode silently

Start-Process -FilePath $vscodeInstallerPath -ArgumentList "/silent" -Wait

 

# Clean up the installer

Remove-Item $vscodeInstallerPath

 

# Optionally, you can add more configuration or extensions installation here

 

# Example: Install an extension (e.g., Python extension)

# code --install-extension ms-python.python

 

Write-Host "Visual Studio Code has been installed."

 

</powershell>