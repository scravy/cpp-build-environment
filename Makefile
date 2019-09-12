all: gcc clang

gcc: Dockerfile.gcc
	docker build -f Dockerfile.gcc -t cpp-build-environment:gcc .

clang: Dockerfile.clang
	docker build -f Dockerfile.clang -t cpp-build-environment:clang .

.PHONY: all gcc clang

