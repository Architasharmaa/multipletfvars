# terraform {
#   required_providers {
#     newrelic = {
#       source  = "newrelic/newrelic"
#       version = "3.37.1"
#     }
#   }
# }
# terraform {
#   required_providers {
#     newrelic = {
#       source  = "newrelic/newrelic"
#       version = "~> 3.0"   # Update this line
#     }
#   }
# }
terraform {
  required_providers {
    newrelic = {
      source = "newrelic/newrelic"
      version = ">= 3.28.3"  
    }
  
  }
  
}




provider "newrelic" {
  account_id = var.account_id
  api_key    = var.api_key
}