cmake_minimum_required(VERSION 3.15 FATAL_ERROR)
project(fbuftest VERSION 0.1.0 LANGUAGES CXX)

find_package(Flatbuffers CONFIG REQUIRED)

set(DEP_TARGETS
	flatbuffers::flatbuffers
)

set(SOURCES 
	${CMAKE_SOURCE_DIR}/main.cpp
)

set(SCHEMAS
	${CMAKE_SOURCE_DIR}/monster.fbs
)

flatbuffers_generate_headers(
	TARGET FBUF_HEADERS
	SCHEMAS ${SCHEMAS}
)

add_executable(fbuftest ${SOURCES})
include_directories(${INCLUDES})
target_link_libraries(fbuftest ${DEP_TARGETS} FBUF_HEADERS)
