# Ubuntu Server ins Azure Arc einbinden

[https://learn.microsoft.com/en-us/cli/azure/install-azure-cli-linux?pivots=apt](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli-linux?pivots=apt)

## **Folgende Befehle auf dem Ubuntu Server ausführen:**

### Schritt 1 Updaten

```sudo apt-get update```

### Schritt 2 Azure CLI installieren

```curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash```

### Schritt 3 CLI Version überprüfen (mindestens 2.7)

```az --version```

### Schritt 4 Mit Azure einloggen

```az login```

###(Schritt 5 (Dieser Befehl muss nur ausgeführt werden, wenn die Resourcen Gruppe noch nicht erstellt wurde)

```az ad sp create-for-rbac -n "http://example.com" --role contributor --scopes 
/subscriptions/Hier-Eure-Subscription-Einfügen/resourcegroups/unibe-idsys-dev-arc-project```

## **Folgende Schritte im portal.azure.com ausführen:**
- In einem Browser portal.azure.com öffnen und anmelden
- Über Suchfenster Azure Arc suchen und öffnen
- Auf Add klicken
![](/media/ubuntu/schritt8.png)

- Eine der drei hier aufgelisteten Lösungen auswählen
![](/media/ubuntu/schritt9.png)
- überprüfen, ob folgende Anforderungen erfüllt sind
![](/media/ubuntu/schritt10.png)
- Subscription, Resource group, Region, Operating System angeben
![](/media/ubuntu/schritt11.png)
- (Optional) Tags setzen
![](/media/ubuntu/schritt12.png)
- Skript herunterladen
- Beschreibung durchlesen
![](/media/ubuntu/schritt14.png)
- Führe das Script dann auf dem gewünschten Server aus

###
