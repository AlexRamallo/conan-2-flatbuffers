

# Conan automatically generated toolchain file
# DO NOT EDIT MANUALLY, it will be overwritten

# Avoid including toolchain file several times (bad if appending to variables like
#   CMAKE_CXX_FLAGS. See https://github.com/android/ndk/issues/323
include_guard()

message(STATUS "Using Conan toolchain: ${CMAKE_CURRENT_LIST_FILE}")

if(${CMAKE_VERSION} VERSION_LESS "3.15")
    message(FATAL_ERROR "The 'CMakeToolchain' generator only works with CMake >= 3.15")
endif()










string(APPEND CONAN_CXX_FLAGS " -m64")
string(APPEND CONAN_C_FLAGS " -m64")
string(APPEND CONAN_SHARED_LINKER_FLAGS " -m64")
string(APPEND CONAN_EXE_LINKER_FLAGS " -m64")



message(STATUS "Conan toolchain: C++ Standard 17 with extensions ON")
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_EXTENSIONS ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Extra c, cxx, linkflags and defines


if(DEFINED CONAN_CXX_FLAGS)
  string(APPEND CMAKE_CXX_FLAGS_INIT " ${CONAN_CXX_FLAGS}")
endif()
if(DEFINED CONAN_C_FLAGS)
  string(APPEND CMAKE_C_FLAGS_INIT " ${CONAN_C_FLAGS}")
endif()
if(DEFINED CONAN_SHARED_LINKER_FLAGS)
  string(APPEND CMAKE_SHARED_LINKER_FLAGS_INIT " ${CONAN_SHARED_LINKER_FLAGS}")
endif()
if(DEFINED CONAN_EXE_LINKER_FLAGS)
  string(APPEND CMAKE_EXE_LINKER_FLAGS_INIT " ${CONAN_EXE_LINKER_FLAGS}")
endif()

get_property( _CMAKE_IN_TRY_COMPILE GLOBAL PROPERTY IN_TRY_COMPILE )
if(_CMAKE_IN_TRY_COMPILE)
    message(STATUS "Running toolchain IN_TRY_COMPILE")
    return()
endif()

set(CMAKE_FIND_PACKAGE_PREFER_CONFIG ON)

# Definition of CMAKE_MODULE_PATH
# the generators folder (where conan generates files, like this toolchain)
list(PREPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_LIST_DIR})

# Definition of CMAKE_PREFIX_PATH, CMAKE_XXXXX_PATH
# The Conan local "generators" folder, where this toolchain is saved.
list(PREPEND CMAKE_PREFIX_PATH ${CMAKE_CURRENT_LIST_DIR} )
list(PREPEND CMAKE_PROGRAM_PATH "/var/home/aramallo/.conan2/p/flatb6f9c55664b9cd/p/bin")
list(PREPEND CMAKE_LIBRARY_PATH "/var/home/aramallo/.conan2/p/flatb6f9c55664b9cd/p/lib")
list(PREPEND CMAKE_INCLUDE_PATH "/var/home/aramallo/.conan2/p/flatb6f9c55664b9cd/p/include")



if (DEFINED ENV{PKG_CONFIG_PATH})
set(ENV{PKG_CONFIG_PATH} "/var/home/aramallo/Repos/conan-center-index/recipes/flatbuffers/all/test_package/build/gcc-12-x86_64-gnu17-release/generators:$ENV{PKG_CONFIG_PATH}")
else()
set(ENV{PKG_CONFIG_PATH} "/var/home/aramallo/Repos/conan-center-index/recipes/flatbuffers/all/test_package/build/gcc-12-x86_64-gnu17-release/generators:")
endif()




# Variables
set(FLATBUFFERS_HEADER_ONLY "False" CACHE STRING "Variable FLATBUFFERS_HEADER_ONLY conan-toolchain defined")
# Variables  per configuration


# Preprocessor definitions
# Preprocessor definitions per configuration
