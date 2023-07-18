# Add the service principal application ID and secret here
servicePrincipalClientId="";
servicePrincipalSecret="";


export subscriptionId="";
export resourceGroup="";
export tenantId="";
export location="";
export authType="principal";
export correlationId="";
export cloud="AzureCloud";


# Download the installation package
output=$(wget https://aka.ms/azcmagent -O ~/install_linux_azcmagent.sh 2>&1);
if [ $? != 0 ]; then wget -qO- --method=PUT --body-data="{\"subscriptionId\":\"$subscriptionId\",\"resourceGroup\":\"$resourceGroup\",\"tenantId\":\"$tenantId\",\"location\":\"$location\",\"correlationId\":\"$correlationId\",\"authType\":\"$authType\",\"operation\":\"onboarding\",\"messageType\":\"DownloadScriptFailed\",\"message\":\"$output\"}" "https://gbl.his.arc.azure.com/log" &> /dev/null || true; fi;
echo "$output";

# Install the hybrid agent
bash ~/install_linux_azcmagent.sh;

# Run connect command
sudo azcmagent connect --service-principal-id "$servicePrincipalClientId" --service-principal-secret "$servicePrincipalSecret" --resource-group "$resourceGroup" --tenant-id "$tenantId" --location "$location" --subscription-id "$subscriptionId" --cloud "$cloud" --correlation-id "$correlationId";


####################################################################################################################
########################## Oben das generierte Script von Microsoft einfügen              ##########################
########################## Achte darauf, dass die ServicePrincipal Variablen gesetzt sind ##########################
####################################################################################################################

if [[ -f /etc/os-release ]]; then
    source /etc/os-release
    if [[ "$NAME" == "Rocky Linux" ]]; then
        echo "Das Betriebssystem ist Rocky Linux."

        ######## Installieren und Aufsetzen des AZ CLI (für Rocky) ########
        sudo dnf install azure-cli -y

        # Login AZ CLI mit SP
        az login --service-principal -u $servicePrincipalClientId -p $servicePrincipalSecret --tenant $tenantId

        ######## Installieren der Pakete fürs Login mit AAD (Rocky) ########
        az connectedmachine extension create --machine-name "$HOSTNAME" --name "AADSSHLogin" --location "$location" --type "AADSSHLoginForLinux" --publisher "Microsoft.Azure.ActiveDirectory" --resource-group "$resourceGroup"


    elif [[ "$NAME" == "Ubuntu" ]]; then
        echo "Das Betriebssystem ist Ubuntu."

        ######## Installieren und Aufsetzen des AZ CLI (für Ubuntu) ########
        curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

        # Login AZ CLI mit SP
        az login --service-principal -u $servicePrincipalClientId -p $servicePrincipalSecret --tenant $tenantId

        ######## Installieren der Pakete fürs Login mit AAD (Ubuntu) ########
        az connectedmachine extension create --machine-name "$HOSTNAME" --name "AADSSHLogin" --location "$location" --type "AADSSHLoginForLinux" --publisher "Microsoft.Azure.ActiveDirectory" --resource-group "$resourceGroup"


    else
        echo "Unbekanntes Betriebssystem: $NAME"
        exit
    fi
else
    echo "Betriebssystemerkennungsdatei nicht gefunden."
    exit
fi


# SSH Einrichten
azcmagent config set incomingconnections.ports 22
az extension add --name ssh
az extension update --name ssh


echo "
*#################################################*
#      Azure Arc Integration war erfolgreich      #
#     ---------------------------------------     #
#     Universität Bern ABT. Informatikdienste     #
*#################################################*
"