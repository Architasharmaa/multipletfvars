alert_var = {
  type                           = "static"
  name                           = "foo"
  description                    = "Alert when transactions are taking too long"
  runbook_url                    = "https://www.example.com"
  enabled                        = true
  violation_time_limit_seconds   = 3600
  fill_option                    = "static"
  fill_value                     = 1.0
  aggregation_window             = 60
  aggregation_method             = "event_flow"
  aggregation_delay              = 120
  expiration_duration            = 120
  open_violation_on_expiration   = true
  close_violations_on_expiration = true
  slide_by                       = 30
  query                           = "SELECT average(duration) FROM Transaction where appName = 'Your App'"
  # critical ={
  operator              = "above"
  threshold             = 5.5
  threshold_duration    = 300
  threshold_occurrences = "ALL"
  #   }

  #   warning = {
  operator_warning              = "above"
  threshold_warning             = 3.5
  threshold_duration_warning    = 600
  threshold_occurrences_warning = "ALL"
  #   }



}

# nrql_query = {

# }

policy_name = "my-module-policy"
