# this uses sudo -E bash so it can be used on both OSX and Linux

summer := $(which md5 || which md5sum)

all: build run

build:
	@echo "Building container..."
	@sudo -E bash -c "docker build --rm -t encryptr-web ."

run: kill
	@echo "Running..."
	@sudo -E bash -c "docker run -p 80:80 -d --name encryptr-static encryptr-web"

kill:
	@echo "Killing any running encryptr-web container..."
	@sudo -E bash -c "docker kill encryptr-static" || true
	@echo "Removing any running encryptr-web container..."
	@sudo -E bash -c "docker rm encryptr-static" || true

watch:
	@echo "Watching src/ directory..."
	@summer=`which md5 || which md5sum`; \
		sum1=""; \
		while [[ true ]]; do \
			sum2="`find src/ -type f -exec md5 {} \; | $$summer;`"; \
			if [[ "$$sum1" != "$$sum2" ]]; then make && sum1=$$sum2; fi; \
			sleep 1; \
		done


PHONY: all build run kill watch
