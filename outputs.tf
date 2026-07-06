output "machine_learning_compute_instances" {
  description = "All machine_learning_compute_instance resources"
  value       = azurerm_machine_learning_compute_instance.machine_learning_compute_instances
}
output "machine_learning_compute_instances_assign_to_user" {
  description = "List of assign_to_user values across all machine_learning_compute_instances"
  value       = [for k, v in azurerm_machine_learning_compute_instance.machine_learning_compute_instances : v.assign_to_user]
}
output "machine_learning_compute_instances_authorization_type" {
  description = "List of authorization_type values across all machine_learning_compute_instances"
  value       = [for k, v in azurerm_machine_learning_compute_instance.machine_learning_compute_instances : v.authorization_type]
}
output "machine_learning_compute_instances_description" {
  description = "List of description values across all machine_learning_compute_instances"
  value       = [for k, v in azurerm_machine_learning_compute_instance.machine_learning_compute_instances : v.description]
}
output "machine_learning_compute_instances_identity" {
  description = "List of identity values across all machine_learning_compute_instances"
  value       = [for k, v in azurerm_machine_learning_compute_instance.machine_learning_compute_instances : v.identity]
}
output "machine_learning_compute_instances_local_auth_enabled" {
  description = "List of local_auth_enabled values across all machine_learning_compute_instances"
  value       = [for k, v in azurerm_machine_learning_compute_instance.machine_learning_compute_instances : v.local_auth_enabled]
}
output "machine_learning_compute_instances_machine_learning_workspace_id" {
  description = "List of machine_learning_workspace_id values across all machine_learning_compute_instances"
  value       = [for k, v in azurerm_machine_learning_compute_instance.machine_learning_compute_instances : v.machine_learning_workspace_id]
}
output "machine_learning_compute_instances_name" {
  description = "List of name values across all machine_learning_compute_instances"
  value       = [for k, v in azurerm_machine_learning_compute_instance.machine_learning_compute_instances : v.name]
}
output "machine_learning_compute_instances_node_public_ip_enabled" {
  description = "List of node_public_ip_enabled values across all machine_learning_compute_instances"
  value       = [for k, v in azurerm_machine_learning_compute_instance.machine_learning_compute_instances : v.node_public_ip_enabled]
}
output "machine_learning_compute_instances_ssh" {
  description = "List of ssh values across all machine_learning_compute_instances"
  value       = [for k, v in azurerm_machine_learning_compute_instance.machine_learning_compute_instances : v.ssh]
}
output "machine_learning_compute_instances_subnet_resource_id" {
  description = "List of subnet_resource_id values across all machine_learning_compute_instances"
  value       = [for k, v in azurerm_machine_learning_compute_instance.machine_learning_compute_instances : v.subnet_resource_id]
}
output "machine_learning_compute_instances_tags" {
  description = "List of tags values across all machine_learning_compute_instances"
  value       = [for k, v in azurerm_machine_learning_compute_instance.machine_learning_compute_instances : v.tags]
}
output "machine_learning_compute_instances_virtual_machine_size" {
  description = "List of virtual_machine_size values across all machine_learning_compute_instances"
  value       = [for k, v in azurerm_machine_learning_compute_instance.machine_learning_compute_instances : v.virtual_machine_size]
}

