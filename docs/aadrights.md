# AADSSH Berechtigungen

Nachdem wir die [AADSSH Erweiterung](https://constantin-koenig.github.io/azurearc-test/aadsshextension/) erfolgreich installiert haben, können wir nun den Zugriff konfigurieren.

## Rollen

Es gibt folgende Rollen für die Erweiterung

| Rolle                                 | Login                     | Root Rechte           |
| ------------------------------------- | ------------------------- | --------------------- |
| `Virtual Machine User Login`          | :white_check_mark:        | :x:                   |
| `Virtual Machine Administrator Login` | :white_check_mark:        | :white_check_mark:    |

## Konfiguration

### Für die ganze Ressourcen Gruppe

1. Gehen Sie zu Ihrer [Ressourcen Gruppe](https://portal.azure.com/#view/HubsExtension/BrowseResourceGroups)      
2. Klicken Sie auf **Access Control (IAM)**     
3. Dann auf **Add** und **Add role assignment**  
4. Nun suchen sie nach **Virtual Machine User Login** oder **Virtual Machine Administrator Login**  
5. Klicken Sie die Rolle an     
6. Weiter mit **Next**  
7. Wählen Sie nun unter **Select members** Ihre gewünschten Benutzer
8. Bestätigen Sie mit **Review + assign**

### Für einzelne Arc Server.

1. Gehen Sie zu Ihrer [Ressourcen Gruppe](https://portal.azure.com/#view/HubsExtension/BrowseResourceGroups)     
1. Wählen Sie den gewünschten Arc Server aus 
2. Klicken Sie auf **Access Control (IAM)**     
3. Dann auf **Add** und **Add role assignment**  
4. Nun suchen sie nach **Virtual Machine User Login** oder **Virtual Machine Administrator Login**  
5. Klicken Sie die Rolle an     
6. Weiter mit **Next**  
7. Wählen Sie nun unter **Select members** Ihre gewünschten Benutzer
8. Bestätigen Sie mit **Review + assign**

<br />
[Verbinden mit Arc Server](https://constantin-koenig.github.io/azurearc-test/connect/){ .md-button }
