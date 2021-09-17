.PHONY: all
all: terraform-fmt terraform-init terraform-validate terraform-plan cleanup
apply: terraform-apply
destroy: terraform-destroy

SHELL := /bin/bash -l

terraform-fmt:
	terraform fmt

terraform-init:
	terraform init -input=false

terraform-validate:
	terraform validate

terraform-plan:
	terraform plan -out terraform.tfplan

terraform-apply: all
	terraform apply --auto-approve

terraform-destroy:
	terraform destroy --auto-approve

cleanup:
	rm -rf terraform.tfplan