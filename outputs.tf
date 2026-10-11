output "deploy_keys_id" {
  description = "Map of id values across all deploy_keys, keyed the same as var.deploy_keys except keys with no id are omitted"
  value       = { for k, v in gitlab_deploy_key.deploy_keys : k => v.id if v.id != null && length(v.id) > 0 }
}
output "deploy_keys_can_push" {
  description = "Map of can_push values across all deploy_keys, keyed the same as var.deploy_keys except keys with no can_push are omitted"
  value       = { for k, v in gitlab_deploy_key.deploy_keys : k => v.can_push if v.can_push != null }
}
output "deploy_keys_deploy_key_id" {
  description = "Map of deploy_key_id values across all deploy_keys, keyed the same as var.deploy_keys except keys with no deploy_key_id are omitted"
  value       = { for k, v in gitlab_deploy_key.deploy_keys : k => v.deploy_key_id if v.deploy_key_id != null }
}
output "deploy_keys_expires_at" {
  description = "Map of expires_at values across all deploy_keys, keyed the same as var.deploy_keys except keys with no expires_at are omitted"
  value       = { for k, v in gitlab_deploy_key.deploy_keys : k => v.expires_at if v.expires_at != null && length(v.expires_at) > 0 }
}
output "deploy_keys_key" {
  description = "Map of key values across all deploy_keys, keyed the same as var.deploy_keys except keys with no key are omitted"
  value       = { for k, v in gitlab_deploy_key.deploy_keys : k => v.key if v.key != null && length(v.key) > 0 }
}
output "deploy_keys_project" {
  description = "Map of project values across all deploy_keys, keyed the same as var.deploy_keys except keys with no project are omitted"
  value       = { for k, v in gitlab_deploy_key.deploy_keys : k => v.project if v.project != null && length(v.project) > 0 }
}
output "deploy_keys_title" {
  description = "Map of title values across all deploy_keys, keyed the same as var.deploy_keys except keys with no title are omitted"
  value       = { for k, v in gitlab_deploy_key.deploy_keys : k => v.title if v.title != null && length(v.title) > 0 }
}

