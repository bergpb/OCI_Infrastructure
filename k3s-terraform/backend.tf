terraform {
  backend "http" {
    address       = "https://objectstorage.us-ashburn-1.oraclecloud.com/n/ids4dyhxibcj/b/terraform-states/o/terraform_state.tfstate"
    update_method = "PUT"
  }
}
#terraform {
#  backend "s3" {
#    bucket         = "terraform_state.tfstate"
#    key            = "https://objectstorage.us-ashburn-1.oraclecloud.com/n/ids4dyhxibcj/b/terraform-states/o/terraform_state.tfstate"
#    region         = "us-ashburn-1"
#    profile        = "<nome_do_perfil_oci>"
#    shared_credentials_file = "/Users/${USER}/.oci"
#  }
#}
