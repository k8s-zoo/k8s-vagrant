.PHONY: validate build
SRC_PATH:=src/

validate:
	cd $(SRC_PATH) && vagrant validate

create:
	cd $(SRC_PATH) && vagrant up

destroy:
	cd $(SRC_PATH) && vagrant destroy -fc
