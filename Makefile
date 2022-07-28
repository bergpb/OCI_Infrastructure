oci:
	echo "34" | oci session authenticate

terraform:
	terraform -chdir=k3s-terraform/ init
	echo "yes" | terraform -chdir=k3s-terraform/ apply --auto-approve

ansible:
	ansible-playbook -i k3s-ansible/inventory/sample/hosts.ini k3s-ansible/site.yml

terraform_destroy:
	echo "yes" | terraform -chdir=k3s-terraform/ destroy --auto-approve