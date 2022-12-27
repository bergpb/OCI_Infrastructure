terraform {
  backend "http" {
    address       = "https://objectstorage.us-ashburn-1.oraclecloud.com/p/2gWIvVk2Q2bw7gq-bgGK5P9KU-ZsxEza3BklmybZDNoj0EU5Rtd3WPluZd3magId/n/ids4dyhxibcj/b/terraform-states/o/terraform_state.tfstate"
    update_method = "PUT"
  }
}
