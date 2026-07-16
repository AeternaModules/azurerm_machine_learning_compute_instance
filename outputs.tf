output "machine_learning_compute_instances_id" {
  description = "Map of id values across all machine_learning_compute_instances, keyed the same as var.machine_learning_compute_instances"
  value       = { for k, v in azurerm_machine_learning_compute_instance.machine_learning_compute_instances : k => v.id if v.id != null && length(v.id) > 0 }
}
output "machine_learning_compute_instances_assign_to_user" {
  description = "Map of assign_to_user values across all machine_learning_compute_instances, keyed the same as var.machine_learning_compute_instances"
  value       = { for k, v in azurerm_machine_learning_compute_instance.machine_learning_compute_instances : k => v.assign_to_user if v.assign_to_user != null && length(v.assign_to_user) > 0 }
}
output "machine_learning_compute_instances_authorization_type" {
  description = "Map of authorization_type values across all machine_learning_compute_instances, keyed the same as var.machine_learning_compute_instances"
  value       = { for k, v in azurerm_machine_learning_compute_instance.machine_learning_compute_instances : k => v.authorization_type if v.authorization_type != null && length(v.authorization_type) > 0 }
}
output "machine_learning_compute_instances_description" {
  description = "Map of description values across all machine_learning_compute_instances, keyed the same as var.machine_learning_compute_instances"
  value       = { for k, v in azurerm_machine_learning_compute_instance.machine_learning_compute_instances : k => v.description if v.description != null && length(v.description) > 0 }
}
output "machine_learning_compute_instances_identity" {
  description = "Map of identity values across all machine_learning_compute_instances, keyed the same as var.machine_learning_compute_instances"
  value       = { for k, v in azurerm_machine_learning_compute_instance.machine_learning_compute_instances : k => v.identity if v.identity != null && length(v.identity) > 0 }
}
output "machine_learning_compute_instances_local_auth_enabled" {
  description = "Map of local_auth_enabled values across all machine_learning_compute_instances, keyed the same as var.machine_learning_compute_instances"
  value       = { for k, v in azurerm_machine_learning_compute_instance.machine_learning_compute_instances : k => v.local_auth_enabled if v.local_auth_enabled != null }
}
output "machine_learning_compute_instances_machine_learning_workspace_id" {
  description = "Map of machine_learning_workspace_id values across all machine_learning_compute_instances, keyed the same as var.machine_learning_compute_instances"
  value       = { for k, v in azurerm_machine_learning_compute_instance.machine_learning_compute_instances : k => v.machine_learning_workspace_id if v.machine_learning_workspace_id != null && length(v.machine_learning_workspace_id) > 0 }
}
output "machine_learning_compute_instances_name" {
  description = "Map of name values across all machine_learning_compute_instances, keyed the same as var.machine_learning_compute_instances"
  value       = { for k, v in azurerm_machine_learning_compute_instance.machine_learning_compute_instances : k => v.name if v.name != null && length(v.name) > 0 }
}
output "machine_learning_compute_instances_node_public_ip_enabled" {
  description = "Map of node_public_ip_enabled values across all machine_learning_compute_instances, keyed the same as var.machine_learning_compute_instances"
  value       = { for k, v in azurerm_machine_learning_compute_instance.machine_learning_compute_instances : k => v.node_public_ip_enabled if v.node_public_ip_enabled != null }
}
output "machine_learning_compute_instances_ssh" {
  description = "Map of ssh values across all machine_learning_compute_instances, keyed the same as var.machine_learning_compute_instances"
  value       = { for k, v in azurerm_machine_learning_compute_instance.machine_learning_compute_instances : k => v.ssh if v.ssh != null && length(v.ssh) > 0 }
}
output "machine_learning_compute_instances_subnet_resource_id" {
  description = "Map of subnet_resource_id values across all machine_learning_compute_instances, keyed the same as var.machine_learning_compute_instances"
  value       = { for k, v in azurerm_machine_learning_compute_instance.machine_learning_compute_instances : k => v.subnet_resource_id if v.subnet_resource_id != null && length(v.subnet_resource_id) > 0 }
}
output "machine_learning_compute_instances_tags" {
  description = "Map of tags values across all machine_learning_compute_instances, keyed the same as var.machine_learning_compute_instances"
  value       = { for k, v in azurerm_machine_learning_compute_instance.machine_learning_compute_instances : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "machine_learning_compute_instances_virtual_machine_size" {
  description = "Map of virtual_machine_size values across all machine_learning_compute_instances, keyed the same as var.machine_learning_compute_instances"
  value       = { for k, v in azurerm_machine_learning_compute_instance.machine_learning_compute_instances : k => v.virtual_machine_size if v.virtual_machine_size != null && length(v.virtual_machine_size) > 0 }
}

