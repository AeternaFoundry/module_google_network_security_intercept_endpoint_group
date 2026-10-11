variable "network_security_intercept_endpoint_groups" {
  description = <<EOT
Map of network_security_intercept_endpoint_groups, attributes below
Required:
    - intercept_deployment_group
    - intercept_endpoint_group_id
    - location
Optional:
    - deletion_policy
    - description
    - labels
    - project
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    intercept_deployment_group  = string
    intercept_endpoint_group_id = string
    location                    = string
    deletion_policy             = optional(string)
    description                 = optional(string)
    labels                      = optional(map(string))
    project                     = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

