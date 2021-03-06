<#  
This will create a new VM for updating the Gies Staff Golden Image
#>


#Login to Azure

Connect-AzAccount -SubscriptionName urbana-vcl-citrix


# Deploy New VM to Azure


New-AzResourceGroupDeployment `
    -Name Gies-Staff-VM-Update `
    -ResourceGroupName Common-Image-Gold `
    -TemplateUri "https://raw.githubusercontent.com/jdcox83/StaffVMtemplate/main/StaffVM-Updates-template.json" `
    -TemplateParameterUri "https://raw.githubusercontent.com/jdcox83/StaffVMtemplate/main/StaffVM-Updates-parameters.json"