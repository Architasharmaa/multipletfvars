resource "newrelic_alert_policy" "modular-policy" {
  name = var.alert_policy
}

resource "newrelic_nrql_alert_condition" "modular-policy" {
  account_id                     = var.account_id
  policy_id                      = newrelic_alert_policy.modular-policy.id
  type                           = var.alert_var.type
  name                           = var.alert_var.name
  description                    = var.alert_var.description
  runbook_url                    = var.alert_var.runbook_url
  enabled                        = var.alert_var.enabled
  violation_time_limit_seconds   = var.alert_var.violation_time_limit_seconds
  fill_option                    = var.alert_var.fill_option
  fill_value                     = var.alert_var.fill_value
  aggregation_window             = var.alert_var.aggregation_window
  aggregation_method             = var.alert_var.aggregation_method
  aggregation_delay              = var.alert_var.aggregation_delay
  expiration_duration            = var.alert_var.expiration_duration
  open_violation_on_expiration   = var.alert_var.open_violation_on_expiration
  close_violations_on_expiration = var.alert_var.close_violations_on_expiration
  slide_by                       = var.alert_var.slide_by

  nrql {
    query = var.alert_var.query
  }

  critical {
    operator              = var.alert_var.operator
    threshold             = var.alert_var.threshold
    threshold_duration    = var.alert_var.threshold_duration
    threshold_occurrences = var.alert_var.threshold_occurrences
  }

  warning {
    operator              = var.alert_var.operator_warning
    threshold             = var.alert_var.threshold_warning
    threshold_duration    = var.alert_var.threshold_duration_warning
    threshold_occurrences = var.alert_var.threshold_occurrences_warning
  }
}