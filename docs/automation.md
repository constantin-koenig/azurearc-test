# **Automatisierung**

## **Service Principal**
### Erstellung    
* Zuerst benötigen wir einen SP.    
Falls Sie keinen SP für Azure Arc haben, können Sie unter folgendem [Link](https://portal.azure.com/#view/Microsoft_Azure_HybridCompute/ServicePrincipalCreate.ReactView) einen erstellen.

### Secret setzen   
* Als nächstes setzen wir einen Secret für den SP.    
        1. [Link](https://portal.azure.com/#view/Microsoft_Azure_HybridCompute/AzureArcCenterBlade/~/servicePrincipals) zu Ihrem aktiven SP.   
        2. Klicken Sie auf Ihren erstellten SP.    
        3. Dann auf "Certificates & secrets".  
        4. Nun klicken Sie auf "New client secret"  
        5. Geben Sie die Daten Ihren Wünschen entsprechend an.   
        6. Kopieren Sie nun den Value des Secrets und speichern Sie diesen vorübergehend ab.   
### Berechtigugen setzen    
* Nun setzen wir die Berechtigungen des SP  
        1. Unter folgendem [Link](https://portal.azure.com/#view/HubsExtension/BrowseResourceGroups) kommen Sie in Ihre Ressourcen Gruppen  
        2. Wählen Sie Ihre Ressource Gruppe aus und klicken Sie auf "Access Control (IAM)".     
        3. Klicken Sie auf "Add" und dann "Add role assignment".    
        4. Nun sollten Sie folgenden Bildschirm sehen:  

