# This make file will be used for terraform
.PHONY: init validate plan apply destroy fmt help
.DEFAULT_GOAL := help

# Initialize Terraform
init:
	terraform init

# Validate Terraform configuration files
validate:
	terraform validate

# Plan Terraform changes
plan:
	terraform plan

# Apply Terraform changes
apply:
	terraform apply $(AUTO_APPROVE)
	
# Destroy Terraform resources
destroy:
	terraform destroy $(AUTO_APPROVE)

# Format Terraform files
format:
	terraform fmt

set-log-level:
	export TF_LOG=$(LOG_LEVEL)

# Display available targets and their descriptions
define HELP_TEXT
	@echo "Usage: make <target>"
	@echo ""
	@echo "Available targets:"
	@echo "  \033[1;32minit\033[0m     - Initialize Terraform"
	@echo "  \033[1;32mvalidate\033[0m - Validate Terraform configuration files"
	@echo "  \033[1;32mplan\033[0m     - Plan Terraform changes"
	@echo "  \033[1;32mapply\033[0m    - Apply Terraform changes"
	@echo "  \033[1;32mdestroy\033[0m  - Destroy Terraform resources"
	@echo "  \033[1;32mformat\033[0m      - Format Terraform files"
	@echo ""
	@echo "Optional flags:"
	@echo "  \033[1;32mAUTO_APPROVE\033[0m - Automatically approve apply and destroy targets"
endef

help:
	$(HELP_TEXT)
