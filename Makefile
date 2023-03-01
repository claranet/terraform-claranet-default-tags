.IGNORE: asdf-install-plugins

asdf-install-plugins:
	asdf plugin add pre-commit
	asdf plugin add terraform https://github.com/asdf-community/asdf-hashicorp.git
	asdf plugin add terraform-docs https://github.com/looztra/asdf-terraform-docs
	asdf plugin add tflint https://github.com/skyzyx/asdf-tflint
	asdf plugin add tfsec https://github.com/woneill/asdf-tfsec

dev-install: asdf-install-plugins
	asdf install
	pre-commit install

doc:
	terraform-docs markdown table --output-file README.md --output-template '<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->\n{{ .Content }}\n<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->' --lockfile=false .

lint:
	tfsec
	tflint
