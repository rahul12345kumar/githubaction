resource "azurerm_resource_group" "rg011" {
    name = "final-rg"
    location = "westus"
}
resource "azurerm_storage_account" "sa011" {
    depends_on = [azurerm_resource_group.rg011]
    name                     = "munnabhastorage123"
    resource_group_name      = "final-rg"
    location                 = "westus"
    account_tier             = "Standard"
    account_replication_type = "LRS"

}