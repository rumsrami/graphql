GOCMD							=go
GOCLEAN						=$(GOCMD) clean

clean: 
	$(GOCLEAN) -modcache -testcache

dep:
	@export GO111MODULE=on && \
		rm -rf ./vendor && \
		go get -u -t -d -v ./... && \
		go mod tidy && \
		go mod vendor
