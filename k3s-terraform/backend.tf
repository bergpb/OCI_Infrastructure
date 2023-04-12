terraform {
  backend "http" {
    address       = "https://objectstorage.us-ashburn-1.oraclecloud.com/n/ids4dyhxibcj/b/terraform-states/o/terraform_state.tfstate"
    update_method = "PUT"
  }
}
