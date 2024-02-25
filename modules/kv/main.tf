
data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "main" {
  name                        = var.key_vault_name
  location                    = var.location
  sku_name                    = var.vault.sku_name
  resource_group_name         = var.vault.resource_group_name
  purge_protection_enabled    = var.vault.purge_protection_enabled
  enabled_for_disk_encryption = var.vault.enabled_for_disk_encryption
  enable_rbac_authorization   = var.vault.enable_rbac_authorization
  enabled_for_deployment      = var.vault.enabled_for_deployment
  tags                        = var.tags
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  network_acls {
    bypass         = var.bypass
    default_action = var.is_network_acls_default_action_allow ? "Allow" : "Deny"
    ip_rules       = var.ip_rules
  }

  lifecycle {
    ignore_changes = [
      tags["deployment-version"],
    ]
  }
}