# OCI k3s Cluster

Create a k3s cluster into OCI Always Free Tier Instances

### Preparing:

1. You must create an account in Oracle Cloud [OCI](https://signup.cloud.oracle.com/?language=en&sourceType=:ow:o:p:feb:0916FreePageBannerButton&intcmp=:ow:o:p:feb:0916FreePageBannerButton)
2. Install `oci` cli: [OCI CLI](https://docs.oracle.com/en-us/iaas/Content/API/SDKDocs/cliinstall.htm)
3. Install `Terraform`: [Install Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)
4. Install `Ansible` : [Install Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)

### Deploying K3S cluster in OCI:

1. In your terminal run: `$make oci` 

[OBS:] This commnad is an autommation to you authenticate in OCI, this command drive you to OCI page to you authorize the integration.

2. Now, run: `$make terraform`

[OBS:] This commnat will call run a `$terraform init` and `$terraform apply --auto-approve` command, it's mean that you will start your cluster creation.

[OBS:] This repo is a Terraform module client calling this repo [Terraform module](https://github.com/alessonviana/OCI_MODULES)

### Installing k3s via Ansible:

1. Run `$touch k3s-ansible/inventory/sample/hosts.ini`
2. After create this file you need to put there the nodes Public IP. `Obs: You can get this info on OCI Dash`
[File Example:]

[k3s_cluster]

- 192.168.23.10 #node01 IP
- 192.168.23.12  #node02 IP
- 192.168.23.13   #node03 IP

[master]

- 192.168.23.10 #node01 IP

[node]

- 192.168.23.12 #node02 IP
- 192.168.23.13  #node03 IP


3. In your terminal run: `$make ansible` 

4. Now you should be able to connect with ssh in node1 instance and run kubectl commands.


### Destroy K3S cluster in OCI::
- If you need to destroy the all nodes you must run: `$make terraform_destroy`

Special thanks for [ampernetacle](https://github.com/jpetazzo/ampernetacle) and [k3s-ansible](https://github.com/k3s-io/k3s-ansible) projects
