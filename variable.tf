variable "alert_var"{
    type = any
}

variable "account_id" {
  description = "New Relic account ID"
  type        = number
}

variable "api_key" {
  description = "New Relic API key"
  type        = string
}
variable "policy_name" {
  description = "policy name"
  type = string
}
