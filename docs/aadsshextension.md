# AADSSH Erweiterung

## Installation über das Portal

- In einem Browser portal.azure.com öffnen und anmelden
- Über Suchfenster Azure Arc suchen und öffnen
- Den gewünschten Server auswählen
- Im Menu Fenster links unter Settings auf Extension klicken und auf Add klicken
![](https://raw.githubusercontent.com/constantin-koenig/azurearc-test/main/docs/media/aadsshextension/schritt4.png)

- Azure AD based SSH-Login auswählen
![](https://raw.githubusercontent.com/constantin-koenig/azurearc-test/main/docs/media/aadsshextension/schritt5.png)

- Auf Next klicken, erstellen und einige Zeit warten

## Installation über AzCLI

``` py title="Azure Client"
az connectedmachine extension create --machine-name "euerArcServer" --name "AADSSHLogin" --location "switzerlandnorth" --type "AADSSHLoginForLinux" --publisher "Microsoft.Azure.ActiveDirectory" --resource-group "eureRessourcenGruppe"
```