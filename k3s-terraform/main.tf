terraform {
  backend "s3" {
    bucket   = "terraform-states"
    key      = "networking/terraform.tfstate"
    region   = "us-ashburn-1"
    endpoint = "https://objectstorage.us-ashburn-1.oraclecloud.com/n/ids4dyhxibcj/b/K3S_Terraform"
    #shared_credentials_file     = "../terraform-states_bucket_credentials"
    skip_region_validation      = true
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    force_path_style            = true
  }
}

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
