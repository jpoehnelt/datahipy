.DEFAULT_GOAL := help

# Define the project directory
PROJECT_DIR = $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

# Define the version tag 
TAG = $(shell python get_version.py)
$(info TAG = $(TAG))
# Replace +, /, _ with - to normalize the tag
# in case the tag includes a branch name
override TAG := $(subst +,-,$(TAG))
override TAG := $(subst /,-,$(TAG))
override TAG := $(subst _,-,$(TAG))
$(info TAG (Normalized) = $(TAG))

# Define the complete docker image tag 
IMAGE_TAG = $(if $(CI_REGISTRY),$(CI_REGISTRY)/hip/bids-tools:$(TAG),bids-tools:$(TAG)) 

# Define the build date and vcs reference
BUILD_DATE = $(shell date -u +"%Y-%m-%dT%H:%M:%SZ")
VCS_REF = $(shell git rev-parse --short HEAD)

# Define the user and user id for the docker container
USER = $(shell whoami)
USER_ID = $(shell id -u $(USER))

#test: @ Run all tests
.PHONY: test
test:
	git submodule update --recursive
	cd test && ./run_tests.sh

#build: @ Builds the project
build:
	docker build \
	-t $(IMAGE_TAG) \
	--build-arg BUILD_DATE=$(BUILD_DATE) \
	--build-arg VCS_REF=$(VCS_REF) \
	--build-arg VERSION=$(TAG) .

#push-docker-ci: @ Push the Docker image with TAG to the CI registry
push-docker-ci:
	docker push $(CI_REGISTRY)/hip/bids-tools:$(TAG)

#clean-docker-ci: @ Remove the Docker image from the CI registry
clean-docker-ci:
	docker rmi $(CI_REGISTRY)/hip/bids-tools:$(TAG)

#python-install: @ Installs the python package
install-python:
	pip install -e .[all]

#install-python-wheel: @ Installs the python wheel
install-python-wheel: build-python-wheel
	pip install bids_tools

#build-python-wheel: @ Builds the python wheel
build-python-wheel:
	python setup.py sdist bdist_wheel

#test-python-install: @ Tests the python package installation
test-python-install: install-python install-python-wheel	
	bids_tools --version

#help:	@ List available tasks on this project
help:
	@grep -E '[a-zA-Z\.\-]+:.*?@ .*$$' $(MAKEFILE_LIST)| tr -d '#'  | awk 'BEGIN {FS = ":.*?@ "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
