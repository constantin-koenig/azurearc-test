# **Mit AzCLI auf Arc Server verbinden**
!!! note ""

    Diese Dokumentation setzt voraus, dass Sie eine aktuelle Version (2.7) auf Ihrem Gerät installiert haben.
    
    [Hier kommen Sie zur Installation](https://constantin-koenig.github.io/azurearc-test/azcli/) 



## AAD (empfohlen)

``` py
az login
az ssh arc --subscription "eureSubscriptionID" --resource-group "eureRessourcenGruppe" --name "nameDesServers" 
```

## Lokaler Benutzer

### Passwort

``` py
az ssh arc --subscription "eureSubscriptionID" --resource-group "eureRessourcenGruppe" --name "nameDesServers" --local-user "lokalerBenutzer"
```

### SSH Key

``` py
az ssh arc --subscription "eureSubscriptionID" --resource-group "eureRessourcenGruppe" --name "nameDesServers" --local-user "lokalerBenutzer" --private-key-file "/pfad/zum/privatkey"
```