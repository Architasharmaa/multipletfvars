alert_var2 = {
  type                           = "static"
  name                           = "Condition2"
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
  operator_alert2             = "above"
  threshold_alert2            = 5.5
  threshold_duration_alert2    = 300
  threshold_occurrences_alert2 = "ALL"
  #   }

  #   warning = {
  operator_warning_alert2             = "above"
  threshold_warning_alert2            = 3.5
  threshold_duration_warning_alert2   = 600
  threshold_occurrences_warning_alert2 = "ALL"
  #   }
  


}
 policy_name = "alert2"

