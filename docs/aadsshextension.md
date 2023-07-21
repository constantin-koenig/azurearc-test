# **SSH und AADSSH Erweiterung**

!!! note ""

    Diese Dokumentation setzt voraus, dass Sie eine aktuelle Version (2.7) auf Ihrem Gerät installiert haben.
    
    [Hier kommen Sie zur Installation](https://constantin-koenig.github.io/azurearc-test/azcli/) 

## SSH Port öffnen für Azure

```py title="Azure Client"
az login
sudo azcmagent config set incomingconnections.ports 22
az extension add --name ssh
az extension update --name ssh
```

## Installation Extension über das Portal

- In einem Browser portal.azure.com öffnen und anmelden
- Über Suchfenster Azure Arc suchen und öffnen
- Den gewünschten Server auswählen
- Im Menu Fenster links unter Settings auf Extension klicken und auf Add klicken
![](https://raw.githubusercontent.com/constantin-koenig/azurearc-test/main/docs/media/aadsshextension/schritt4.png)

- Azure AD based SSH-Login auswählen
![](https://raw.githubusercontent.com/constantin-koenig/azurearc-test/main/docs/media/aadsshextension/schritt5.png)

- Auf Next klicken, erstellen und einige Zeit warten

## Installation Extension über AzCLI

``` py title="Azure Client"
az connectedmachine extension create --machine-name "euerArcServer" --name "AADSSHLogin" --location "switzerlandnorth" --type "AADSSHLoginForLinux" --publisher "Microsoft.Azure.ActiveDirectory" --resource-group "eureRessourcenGruppe"
```

<br />
[AADSSH Berechtigungen](https://constantin-koenig.github.io/azurearc-test/aadrights/){ .md-button } [Automatisierung](https://constantin-koenig.github.io/azurearc-test/automation/){ .md-button }