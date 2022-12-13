module "oci_core_instance" {
  source = "git::https://github.com/alessonviana/OCI_MODULES.git"
  how_many_nodes           = var.how_many_nodes
  shape                    = var.shape
  operating_system         = var.operating_system
  operating_system_version = var.operating_system_version
  memory_in_gbs_per_node   = var.memory_in_gbs_per_node
  ocpus_per_node           = var.ocpus_per_node
}

module "oci_core_vcn" {
  source     = "git::https://github.com/alessonviana/OCI_MODULES.git"
  cidr_block = var.cidr_block
}
