.PHONY: validate build

validate:
	vagrant validate

create:
	vagrant up --provider=virtualbox

destroy:
	vagrant destroy -f
