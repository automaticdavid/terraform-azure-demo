module "azurelb" {
  source                 = "../../../modules/azure-lb"
  tf_az_name             = "test"
  tf_az_env              = "staging"
  tf_az_location         = "westeurope"
  tf_az_ft_name          = "lb-web-server"
  tf_az_lb_probes_port   = "80"
  tf_az_lb_nb_probes     = "2"
  tf_az_lb_rule_proto    = "Tcp"
  tf_az_lb_rule_ft_port  = "80"
  tf_az_lb_rule_bck_port = "80"
  tf_az_rg_name          = "staging-test-rg"

  tf_az_tags = {
    environment = "staging"
  }
}