IMG     ?= bsorahan/bats
LIBEXEC  = $(wildcard libexec/*)

image: .image
.image: Dockerfile bin/bats $(LIBEXEC)
	docker build -t $(IMG) .
	@touch $@

push: .push
.push:
	docker push $(IMG)
	@touch $@
