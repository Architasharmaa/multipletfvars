
alert_var3 = {
  type                           = "static"
  name                           = "Condition3"
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
  operator_alert3             = "above"
  threshold_alert3              = 5.5
  threshold_duration_alert3     = 300
  threshold_occurrences_alert3  = "ALL"
  #   }

  #   warning = {
  operator_warning_alert3               = "above"
  threshold_warning_alert3             = 3.5
  threshold_duration_warning_alert3     = 600
  threshold_occurrences_warning_alert3  = "ALL"
  #   }

}

policy_name = "alert3"
