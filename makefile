default: build

install:
	sudo dnf install cmake flex bison gcc gcc-c++ gtest-devel llvm-devel lld

build:
	cmake -G Ninja -S . \
	-B build-Debug\
	-DCMAKE_BUILD_TYPE=Debug\
	-DLLVM_DIR=/usr/lib/llvm/18/lib64/cmake/llvm\
	-DLLD_DIR=/usr/lib/llvm/18/lib64/cmake/lld

clean:
	rm -rf build-Debug
