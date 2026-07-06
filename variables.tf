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
  validation {
    condition = alltrue([
      for k, v in var.machine_learning_compute_instances : (
        can(regex("^[a-zA-Z][a-zA-Z0-9-]{3,24}$", v.name))
      )
    ])
    error_message = "It can include letters, digits and dashes. It must start with a letter, end with a letter or digit, and be between 3 and 24 characters in length."
  }
  validation {
    condition = alltrue([
      for k, v in var.machine_learning_compute_instances : (
        v.assign_to_user == null || (v.assign_to_user.tenant_id == null || (can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.assign_to_user.tenant_id))))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.machine_learning_compute_instances : (
        v.assign_to_user == null || (v.assign_to_user.object_id == null || (length(v.assign_to_user.object_id) > 0))
      )
    ])
    error_message = "must not be empty"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_machine_learning_compute_instance's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: machine_learning_workspace_id
  #   source:    [from workspaces.ValidateWorkspaceID] !ok
  # path: machine_learning_workspace_id
  #   source:    [from workspaces.ValidateWorkspaceID] err != nil
  # path: authorization_type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: identity.type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: identity.identity_ids[*]
  #   source:    [from commonids.ValidateUserAssignedIdentityID] !ok
  # path: identity.identity_ids[*]
  #   source:    [from commonids.ValidateUserAssignedIdentityID] err != nil
  # path: subnet_resource_id
  #   source:    [from commonids.ValidateSubnetID] !ok
  # path: subnet_resource_id
  #   source:    [from commonids.ValidateSubnetID] err != nil
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}

