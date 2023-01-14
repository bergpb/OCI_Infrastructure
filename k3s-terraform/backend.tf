terraform {
  backend "http" {
    address       = "https://objectstorage.us-ashburn-1.oraclecloud.com/p/crjFp7rq_f-HYNjK7VXUC7-fOj3wsqdjlrhriAgsOzEQelytrKTKr9wK3oOvDTe0/n/ids4dyhxibcj/b/terraform-states/o/terraform_state.tfstate"
    update_method = "PUT"
  }
}
