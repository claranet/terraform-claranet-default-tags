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
	pre-commit install --hook-type commit-msg

docs:
	terraform-docs markdown table .

lint:
	tfsec
	tflint
