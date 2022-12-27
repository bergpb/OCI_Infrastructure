module "k3s" {
  source                   = "git::https://github.com/alessonviana/OCI_MODULES.git"
  tenancy_ocid             = var.tenancy_ocid
  compartment_id           = var.tenancy_ocid
  compartment_name         = var.compartment_name
  compartment_description  = "compartment created by terraform"
  compartment_create       = true
  enable_delete            = true
  shape                    = var.shape
  operating_system         = var.operating_system
  operating_system_version = var.operating_system_version
  memory_in_gbs_per_node   = var.memory_in_gbs_per_node
}
