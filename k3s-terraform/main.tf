module "k3s" {
  source                   = "git::https://github.com/alessonviana/OCI_MODULES.git"
  name                     = "K3S_DEVOPS" #compartment name
  memory_in_gbs_per_node   = "6" 
}
