# Azure Client installation

## Windows

``` py title="Powershell" 
$ProgressPreference = 'SilentlyContinue'; Invoke-WebRequest -Uri https://aka.ms/installazurecliwindows -OutFile .\AzureCLI.msi; Start-Process msiexec.exe -Wait -ArgumentList '/I AzureCLI.msi /quiet'; Remove-Item .\AzureCLI.msi
```

## MacOs

``` py title="Bash"
brew update && brew install azure-cli
```

## Ubuntu

``` py title="Bash"
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
```

## Rocky

``` py title="Bash"
sudo dnf install azure-cli
```

[Link zur Microsoft Dokumentation](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli)
