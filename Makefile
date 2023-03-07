orc.bin: build/fbuftest
	cd build && ./fbuftest

build/fbuftest: build/CMakeCache.txt src/monster.fbs src/main.cpp
	cmake --build build

build/conan_toolchain.cmake:
	conan install .				\
		-of=build				\
		-pr:b=default			\
		-pr:b=options_build.txt	\
		-pr:h=default			\
		-pr:h=options_host.txt	\
		--build=missing

build/CMakeCache.txt: build/conan_toolchain.cmake
	cmake  -S src -B build 								\
		-DCMAKE_TOOLCHAIN_FILE=conan_toolchain.cmake 	\
		-DCMAKE_POLICY_DEFAULT_CMP0091=NEW				\
		-DCMAKE_BUILD_TYPE=Release

clean:
	rm -rf build

install: build/conan_toolchain.cmake
configure: build/CMakeCache.txt
build: build/fbuftest