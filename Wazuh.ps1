Invoke-WebRequest -Uri https://packages.wazuh.com/4.x/windows/wazuh-agent-4.3.5-1.msi `
-OutFile ${env:tmp}\wazuh-agent-4.3.5.msi; msiexec.exe /i ${env:tmp}\wazuh-agent-4.3.5.msi /q WAZUH_MANAGER='34.93.97.189' WAZUH_REGISTRATION_SERVER='34.93.97.189' WAZUH_AGENT_GROUP='default'
Start-Service -Name WazuhSvc