module "k3s" {
  source                   = "git::https://github.com/alessonviana/OCI_MODULES.git"
  name                     = "K3S_CLUSTER" #compartment name
  memory_in_gbs_per_node   = "6" 
  shape                    = "VM.Standard.A1.Flex"
}
