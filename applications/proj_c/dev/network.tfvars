resource_location = "eastus"
vnet_name = "odxi-vnet-test-01"
vnet_address_space = ["10.0.0.0/16"]
resource_group_name = "odxi-network-rg-01"
subnet_address_ranges = ["10.0.1.0/24","10.0.2.0/24","10.0.3.0/24","10.0.222.0/27"]
subnet_names = ["private-subnet-01","public-subnet-01","appgateway-subnet-01", "azurebastionsubnet"]
service-endpoints = [
    ["Microsoft.AzureCosmosDB","Microsoft.Keyvault","Microsoft.Storage","Microsoft.sql"],
    ["Microsoft.AzureCosmosDB","Microsoft.Keyvault","Microsoft.Storage","Microsoft.sql"],
    ["Microsoft.AzureCosmosDB","Microsoft.Keyvault","Microsoft.Storage","Microsoft.sql","Microsoft.AzureActiveDirectory","Microsoft.ContainerRegistry","Microsoft.EventHub","Microsoft.ServiceBus","Microsoft.Web"],
    ["Microsoft.AzureCosmosDB","Microsoft.Keyvault","Microsoft.Storage","Microsoft.sql","Microsoft.AzureActiveDirectory","Microsoft.ContainerRegistry","Microsoft.EventHub","Microsoft.ServiceBus","Microsoft.Web"]
    
]
subnet_nsg_ids = []
subnet_route_tables = [
    "","","",
   // "/subscription/d276ebc2-efd2-4b53-9eb4-304982e42f4b/resourceGroups/ashu-network-rg-01/providers/Microsoft.Network/routeTables/",
    "","","",
    ""
]
service_delegations = [
    [],[],[],[],
    [
        {
            name = "app-service-delegation-linux"
            service_delegation_name = "Microsoft.web/serverFarms"
            service_delegation_action = ["Microsoft.Network/virtualNetworks/subnets/action"]
        }
    ],
    [
        {
            name = "app-service-delegation-windows"
            service_delegation_name = "Microsoft.web/serverFarms"
            service_delegation_action = ["Microsoft.Network/virtualNetworks/subnets/action"] 
        }
    ],
    [
        {
            name = "databricks-delegation-public"
            service_delegation_name = "Microsoft.web/serverFarms"
            service_delegation_action = ["Microsoft.Network/virtualNetworks/subnets/action"]
        }
    ],
    [
        {
            name = "databricks-delegation-private"
            service_delegation_name = "Microsoft.web/serverFarms"
            service_delegation_action = ["Microsoft.Network/virtualNetworks/subnets/action"]
         }
    ],
    []
]
