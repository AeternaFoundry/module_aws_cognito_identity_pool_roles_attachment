variable "cognito_identity_pool_roles_attachments" {
  description = <<EOT
Map of cognito_identity_pool_roles_attachments, attributes below
Required:
    - identity_pool_id
    - roles
Optional:
    - region
    - role_mapping (block):
        - ambiguous_role_resolution (optional)
        - identity_provider (required)
        - mapping_rule (optional, block):
            - claim (required)
            - match_type (required)
            - role_arn (required)
            - value (required)
        - type (required)
EOT

  type = map(object({
    identity_pool_id = string
    roles            = map(string)
    region           = optional(string)
    role_mapping = optional(list(object({
      ambiguous_role_resolution = optional(string)
      identity_provider         = string
      mapping_rule = optional(list(object({
        claim      = string
        match_type = string
        role_arn   = string
        value      = string
      })))
      type = string
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.cognito_identity_pool_roles_attachments : (
        v.role_mapping == null || alltrue([for item in v.role_mapping : (item.mapping_rule == null || (length(item.mapping_rule) <= 25))])
      )
    ])
    error_message = "Each mapping_rule list must contain at most 25 items"
  }
  # Note: 7 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

