output "cognito_identity_pool_roles_attachments_id" {
  description = "Map of id values across all cognito_identity_pool_roles_attachments, keyed the same as var.cognito_identity_pool_roles_attachments"
  value       = { for k, v in aws_cognito_identity_pool_roles_attachment.cognito_identity_pool_roles_attachments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cognito_identity_pool_roles_attachments_identity_pool_id" {
  description = "Map of identity_pool_id values across all cognito_identity_pool_roles_attachments, keyed the same as var.cognito_identity_pool_roles_attachments"
  value       = { for k, v in aws_cognito_identity_pool_roles_attachment.cognito_identity_pool_roles_attachments : k => v.identity_pool_id if v.identity_pool_id != null && length(v.identity_pool_id) > 0 }
}
output "cognito_identity_pool_roles_attachments_region" {
  description = "Map of region values across all cognito_identity_pool_roles_attachments, keyed the same as var.cognito_identity_pool_roles_attachments"
  value       = { for k, v in aws_cognito_identity_pool_roles_attachment.cognito_identity_pool_roles_attachments : k => v.region if v.region != null && length(v.region) > 0 }
}
output "cognito_identity_pool_roles_attachments_role_mapping" {
  description = "Map of role_mapping values across all cognito_identity_pool_roles_attachments, keyed the same as var.cognito_identity_pool_roles_attachments"
  value       = { for k, v in aws_cognito_identity_pool_roles_attachment.cognito_identity_pool_roles_attachments : k => v.role_mapping if v.role_mapping != null && length(v.role_mapping) > 0 }
}
output "cognito_identity_pool_roles_attachments_roles" {
  description = "Map of roles values across all cognito_identity_pool_roles_attachments, keyed the same as var.cognito_identity_pool_roles_attachments"
  value       = { for k, v in aws_cognito_identity_pool_roles_attachment.cognito_identity_pool_roles_attachments : k => v.roles if v.roles != null && length(v.roles) > 0 }
}

