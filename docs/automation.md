# **Automatisierung**

## **Service Principal**
### Erstellung    
Zuerst benötigen wir einen SP.    
Falls Sie keinen SP für Azure Arc haben, können Sie unter folgendem [Link](https://portal.azure.com/#view/Microsoft_Azure_HybridCompute/ServicePrincipalCreate.ReactView) einen erstellen.

### Secret setzen   
 Als nächstes setzen wir einen Secret für den SP.    

1. [Link](https://portal.azure.com/#view/Microsoft_Azure_HybridCompute/AzureArcCenterBlade/~/servicePrincipals) zu Ihrem aktiven SP.   
2. Klicken Sie auf Ihren erstellten SP.    
3. Dann auf "Certificates & secrets".  
4. Nun klicken Sie auf "New client secret"  
5. Geben Sie die Daten Ihren Wünschen entsprechend an.   
6. Kopieren Sie nun den Value des Secrets und speichern Sie diesen vorübergehend ab.   

### Berechtigugen setzen    
Nun setzen wir die Berechtigungen des SP  

1. Unter folgendem [Link](https://portal.azure.com/#view/HubsExtension/BrowseResourceGroups) kommen Sie in Ihre Ressourcen Gruppen  
2. Wählen Sie Ihre Ressource Gruppe aus und klicken Sie auf "Access Control (IAM)".     
3. Klicken Sie auf "Add" und dann "Add role assignment".    
4. Nun sollten Sie folgenden Bildschirm sehen:  
![](https://raw.githubusercontent.com/constantin-koenig/azurearc-test/main/docs/media/autmation/berechtigungSP1.png)    
5. Suchen sie nach "Azure Connected Machine Onboarding".    
6. Wählen Sie die Rolle aus und klicken Sie auf "Next".     
7. Klicken Sie auf "Select Members".    
8. Geben Sie nun den ganzen Namen Ihres SP ein, ansonsten wird dieser möglicherweise nicht angezeigt.   
![](https://raw.githubusercontent.com/constantin-koenig/azurearc-test/main/docs/media/autmation/berechtigungSP2.png)   
9. Wählen Sie den SP aus und Klicken Sie auf "Select".  
10. Nun können Sie auf "Review + assign" klicken.   

## **Sript erzeugen**   
1. Öffnen Sie folgenden [Link](https://portal.azure.com/#view/Microsoft_Azure_HybridCompute/AzureArcCenterBlade/~/overview) 
2. Klicken Sie auf "Add"    

![](https://raw.githubusercontent.com/constantin-koenig/azurearc-test/main/docs/media/autmation/script1.png)    
3. Dann auf "Servers"   

![](https://raw.githubusercontent.com/constantin-koenig/azurearc-test/main/docs/media/autmation/script2.png)   
4. Klicke auf "Generate Script" unter "Add multiple Servers"   

![](https://raw.githubusercontent.com/constantin-koenig/azurearc-test/main/docs/media/autmation/script3.png)  
5. weiter mit Next  
6. Nun sollte folgender Bildschirm sichtbar sein:

![](https://raw.githubusercontent.com/constantin-koenig/azurearc-test/main/docs/media/autmation/script4.png)  
7. Füllen Sie die Textfelder entsprechend Ihrer Konfiguration aus.  
8. Sobald Sie alles ausgefüllt haben, sollten Sie nun ein Bash Script sehen.    
9. Laden Sie dies herunter und fügen Sie in der Zeile 3 nun Ihre SP-Kürzel, welches Sie vorhin kopiert haben, ein.  

## **Autmations Script von Github**     

!!! note ""

    Das Script unterstützt aktuell nur Ubuntu und Rocky Linux.
    

[Das Script](https://github.com/constantin-koenig/azurearc-test/blob/main/OnboardingScript.sh) automatisiert folgendes:    

* Einbindung Server in Azure Arc

* Installation Az CLI     

* Portöffnung für SSH über Azure  

* AADSSH Extension wird hinzugefügt     

<br />
[AADSSH Berechtigungen](https://constantin-koenig.github.io/azurearc-test/aadrights/){ .md-button } 

