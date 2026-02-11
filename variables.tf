variable "machine_learning_compute_instances" {
  description = <<EOT
Map of machine_learning_compute_instances, attributes below
Required:
    - machine_learning_workspace_id
    - name
    - virtual_machine_size
Optional:
    - authorization_type
    - description
    - local_auth_enabled
    - node_public_ip_enabled
    - subnet_resource_id
    - tags
    - assign_to_user (block):
        - object_id (optional)
        - tenant_id (optional)
    - identity (block):
        - identity_ids (optional)
        - type (required)
    - ssh (block):
        - public_key (required)
EOT

  type = map(object({
    machine_learning_workspace_id = string
    name                          = string
    virtual_machine_size          = string
    authorization_type            = optional(string)
    description                   = optional(string)
    local_auth_enabled            = optional(bool) # Default: true
    node_public_ip_enabled        = optional(bool) # Default: true
    subnet_resource_id            = optional(string)
    tags                          = optional(map(string))
    assign_to_user = optional(object({
      object_id = optional(string)
      tenant_id = optional(string)
    }))
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
    ssh = optional(object({
      public_key = string
    }))
  }))
}

