.PHONY: all init up up-d down exec ruby-book bash docker docker-rm

# CONST
D=docker
DC=${D}-compose

# VARIABLE
a=

###########################################################################################################
all: ruby-book

build:
	${DC} build

up:
	${DC} up

up-d:
	${DC} up -d

down:
	${DC} down

exec:
	${DC} exec app /bin/bash -c "${a}"

ruby-book:
	${DC} exec app /bin/bash -c "cd ruby-book && ruby ${a}"

bash:
	${DC} exec app /bin/bash

###########################################################################################################
docker:
	${D} system df -v

docker-rm:
	${D} system prune -a --volumes
