terraform {
  backend "http" {
    address = "https://objectstorage.us-ashburn-1.oraclecloud.com/terraform-states"
    update_method = "PUT"
  }
}