# Ubuntu Server ins Azure Arc einbinden

[https://learn.microsoft.com/en-us/cli/azure/install-azure-cli-linux?pivots=apt](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli-linux?pivots=apt)

## Folgende Befehle auf dem Ubuntu Server ausführen:

### Schritt 1 Updaten

sudo apt-get update

### Schritt 2 Azure CLI installieren

curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

### Schritt 3 CLI Version überprüfen (mindestens 2.7)

az --version

### Schritt 4 Mit Azure einloggen

az login

###(Schritt 5 (Dieser Befehl muss nur ausgeführt werden, wenn die Resourcen Gruppe 
noch nicht erstellt wurde)

az ad sp create-for-rbac -n "http://example.com" --role contributor --scopes 
/subscriptions/subscription/resourcegroups/unibe-idsys-dev-arc-project

## Folgende Schritte im portal.azure.com ausführen:

### Schritt 6

In einem Browser portal.azure.com öffnen und anmelden

### Schritt 7

Über Suchfenster Azure Arc suchen und öffnen

### Schritt 8

Auf Add klicken

![](media/ubuntu/schritt8.png)

### Schritt 9

Eine der drei hier aufgelisteten Lösungen auswählen

![](RackMultipart20230719-1-eqh6bq_html_51855a23b64814e3.png)

### Schritt 10

überprüfen, ob folgende Anforderungen erfüllt sind

![](RackMultipart20230719-1-eqh6bq_html_a6595829a1b1a8f1.png)

### Schritt 11

Subscription, Resource group, Region, Operating System angeben

![](RackMultipart20230719-1-eqh6bq_html_bbbcd93f5f47b693.png)

### Schritt 12

(Optional) Tags setzen

![](RackMultipart20230719-1-eqh6bq_html_4ff5ed0c95753538.png)

### Schritt 13

Skript herunterladen

### Schritt 14

Beschreibung durchlesen

![](RackMultipart20230719-1-eqh6bq_html_658a6c36900d4ce.png)

Nun gibt es mehrere Möglichkeiten, um die Datei oder den Inhalt der Datei ins Ziel 
VM zu kopieren. Man könnte die beim Schritt 14 angezeigte Inhalt kopieren, im Ziel 
VM eine Datei erstellen, den Inhalt einfügen, die Datei ausführbar machen und 
schliesslich die Datei ausführen.

### Schritt 15 Heruntergeladene Datei ins VM kopieren

Um die heruntergeladene Datei ins VM zu kopieren, habe ich die Vagrant scp Lösung 
ausgewählt. Dazu musste ich zuerst vagrant scp lokal auf meinem Gerät installieren.

Terminal öffnen und folgende Befehl ausführen:

vagrant plugin install vagrant-scp

### Schritt 16 Die heruntergeladene Datei auf die VM kopieren

vagrant scp /Users/ab21y600/Downloads/OnboardingScript.sh 
ubuntu2204:/home/vagrant/skript/OnboardingScript.sh

### Schritt 17 überprüfen, ob die Datei auf dem VM ist

cd /home/vagrant/skript

ls -la

### Schritt 18 Datei ausführbar machen

sudo chmod +x OnboardingScript.sh

### Schritt 19 Datei ausführen

sudo bash OnboardingScript.sh
