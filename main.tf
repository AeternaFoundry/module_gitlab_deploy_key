resource "gitlab_deploy_key" "deploy_keys" {
  for_each = var.deploy_keys

  key        = each.value.key
  project    = each.value.project
  title      = each.value.title
  can_push   = each.value.can_push
  expires_at = each.value.expires_at
}

