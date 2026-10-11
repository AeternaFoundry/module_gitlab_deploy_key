variable "deploy_keys" {
  description = <<EOT
Map of deploy_keys, attributes below
Required:
    - key
    - project
    - title
Optional:
    - can_push
    - expires_at
EOT

  type = map(object({
    key        = string
    project    = string
    title      = string
    can_push   = optional(bool)
    expires_at = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

