# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /var/home/aramallo/Repos/conan-center-index/recipes/flatbuffers/all/test_package

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /var/home/aramallo/Repos/conan-center-index/recipes/flatbuffers/all/test_package/build/gcc-12-x86_64-gnu17-release

# Include any dependencies generated for this target.
include CMakeFiles/test_package.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/test_package.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/test_package.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test_package.dir/flags.make

CMakeFiles/test_package.dir/test_package.cpp.o: CMakeFiles/test_package.dir/flags.make
CMakeFiles/test_package.dir/test_package.cpp.o: /var/home/aramallo/Repos/conan-center-index/recipes/flatbuffers/all/test_package/test_package.cpp
CMakeFiles/test_package.dir/test_package.cpp.o: CMakeFiles/test_package.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/var/home/aramallo/Repos/conan-center-index/recipes/flatbuffers/all/test_package/build/gcc-12-x86_64-gnu17-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/test_package.dir/test_package.cpp.o"
	/usr/lib64/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/test_package.dir/test_package.cpp.o -MF CMakeFiles/test_package.dir/test_package.cpp.o.d -o CMakeFiles/test_package.dir/test_package.cpp.o -c /var/home/aramallo/Repos/conan-center-index/recipes/flatbuffers/all/test_package/test_package.cpp

CMakeFiles/test_package.dir/test_package.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_package.dir/test_package.cpp.i"
	/usr/lib64/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /var/home/aramallo/Repos/conan-center-index/recipes/flatbuffers/all/test_package/test_package.cpp > CMakeFiles/test_package.dir/test_package.cpp.i

CMakeFiles/test_package.dir/test_package.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_package.dir/test_package.cpp.s"
	/usr/lib64/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /var/home/aramallo/Repos/conan-center-index/recipes/flatbuffers/all/test_package/test_package.cpp -o CMakeFiles/test_package.dir/test_package.cpp.s

# Object files for target test_package
test_package_OBJECTS = \
"CMakeFiles/test_package.dir/test_package.cpp.o"

# External object files for target test_package
test_package_EXTERNAL_OBJECTS =

test_package: CMakeFiles/test_package.dir/test_package.cpp.o
test_package: CMakeFiles/test_package.dir/build.make
test_package: /var/home/aramallo/.conan2/p/flatb6f9c55664b9cd/p/lib/libflatbuffers.a
test_package: CMakeFiles/test_package.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/var/home/aramallo/Repos/conan-center-index/recipes/flatbuffers/all/test_package/build/gcc-12-x86_64-gnu17-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test_package"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_package.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test_package.dir/build: test_package
.PHONY : CMakeFiles/test_package.dir/build

CMakeFiles/test_package.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test_package.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test_package.dir/clean

CMakeFiles/test_package.dir/depend:
	cd /var/home/aramallo/Repos/conan-center-index/recipes/flatbuffers/all/test_package/build/gcc-12-x86_64-gnu17-release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /var/home/aramallo/Repos/conan-center-index/recipes/flatbuffers/all/test_package /var/home/aramallo/Repos/conan-center-index/recipes/flatbuffers/all/test_package /var/home/aramallo/Repos/conan-center-index/recipes/flatbuffers/all/test_package/build/gcc-12-x86_64-gnu17-release /var/home/aramallo/Repos/conan-center-index/recipes/flatbuffers/all/test_package/build/gcc-12-x86_64-gnu17-release /var/home/aramallo/Repos/conan-center-index/recipes/flatbuffers/all/test_package/build/gcc-12-x86_64-gnu17-release/CMakeFiles/test_package.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test_package.dir/depend
