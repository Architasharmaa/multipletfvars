module "archita" {
  source = "./modules"
  alert_var = var.alert_var
  api_key = var.api_key
  account_id = var.account_id
  alert_policy = var.policy_name
  


 
}