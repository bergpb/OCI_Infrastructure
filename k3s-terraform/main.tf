module "oci_core_instance" {
  source = "git::https://github.com/alessonviana/OCI_MODULES.git"
  #instance_count             = 1 # how many instances do you want?
  #ad_number                  = 1 # AD number to provision instances. If null, instances are provisionned in a rolling manner starting with AD1
  #compartment_ocid           = var.compartment_ocid
  #source_ocid                = var.source_ocid
  #subnet_ocids               = var.subnet_ocids
  #public_ip                  = var.public_ip # NONE, RESERVED or EPHEMERAL
  #ssh_public_keys            = var.ssh_public_keys
  #block_storage_sizes_in_gbs = [50]
  how_many_nodes           = var.how_many_nodes
  shape                    = var.shape
  operating_system         = var.operating_system
  operating_system_version = var.operating_system_version
  memory_in_gbs_per_node   = var.memory_in_gbs_per_node
  ocpus_per_node           = var.ocpus_per_node
  #instance_state             = var.instance_state # RUNNING or STOPPED
  #boot_volume_backup_policy  = var.boot_volume_backup_policy # disabled, gold, silver or bronze
}

module "oci_core_vcn" {
  source     = "git::https://github.com/alessonviana/OCI_MODULES.git"
  cidr_block = var.cidr_block
}
