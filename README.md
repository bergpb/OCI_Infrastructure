# OCI k3s Cluster

Create a k3s cluster into OCI Always Free Tier Instances

### Preparing:

1. Generate ssh keys: `ssh-keygen -t ed25519 -f oci`
2. Copy these files into `k3s-terraform` folder: `cp oci* k3s-terraform`
3. Install `oci` cli: [OCI CLI](https://docs.oracle.com/en-us/iaas/Content/API/SDKDocs/cliinstall.htm)

### Deploying nodes in OCI:

1. Enter into `k3s-terraform` folder
2. Login with your `oci` account: `oci session authenticate`
3. Run `terraform plan` and after `terraform apply`
4. Get node ips after on the end of previously command, please keep them visible, we will use it on next steps

### Installing k3s with Ansible:

1. Go to `k3s-ansible` folder
2. Copy sample hosts files
3. Open `hosts.ini` file and change with your ips from oci node deployment
4. Run Ansible playbook to install and configure k3s: `ansible-playbook site.yml -i inventory/cluster/hosts.ini --private-key "oci"`

Now you should be able to connect with ssh in node1 instance and run kubectl commands.

Special thanks for [ampernetacle](https://github.com/jpetazzo/ampernetacle) and [k3s-ansible](https://github.com/k3s-io/k3s-ansible) projects