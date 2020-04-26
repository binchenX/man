Target=binc/man-page:$(shell cat VERSION)
build:
	docker build . -t ${Target}
push:
	docker push ${Target}
