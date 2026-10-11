resource "google_network_security_intercept_endpoint_group" "network_security_intercept_endpoint_groups" {
  for_each = var.network_security_intercept_endpoint_groups

  intercept_deployment_group  = each.value.intercept_deployment_group
  intercept_endpoint_group_id = each.value.intercept_endpoint_group_id
  location                    = each.value.location
  deletion_policy             = each.value.deletion_policy
  description                 = each.value.description
  labels                      = each.value.labels
  project                     = each.value.project

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

