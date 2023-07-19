# Mit AzCLI auf Arc Server verbinden
!!! note ""

    Diese Dokumentation setzt voraus, dass sie eine aktuelle Version (2.7) auf Ihrem Gerät installiert haben.
    
    [Hier kommen sie zur Installation](https://constantin-koenig.github.io/azurearc-test/azcli/) 



## AAD (empfohlen)

``` py
az login
az ssh arc --subscription "eureSubscriptionID" --resource-group "eureRessourcenGruppeID" --name "nameDesServers" 
```

## Lokaler Benutzer

### Passwort

``` py
az ssh arc --subscription "eureSubscriptionID" --resource-group "eureRessourcenGruppeID" --name "nameDesServers" --local-user "lokalerBenutzer"
```

### SSH Key

``` py
az ssh arc --subscription "eureSubscriptionID" --resource-group "eureRessourcenGruppeID" --name "nameDesServers" --local-user "lokalerBenutzer" --private-key-file "/pfad/zum/privatkey"
```