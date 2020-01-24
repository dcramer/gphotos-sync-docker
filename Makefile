NAME   := zeeg99/gphotos-sync
TAG    := `git log -1 --pretty=%H`
IMG    := ${NAME}:${TAG}
LATEST := ${NAME}:latest

build:
	@docker build -t ${IMG} .
	@docker tag ${IMG} ${LATEST}

push:
	@docker push ${NAME}
