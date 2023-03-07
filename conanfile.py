from conan import ConanFile
from conan.tools.cmake import CMakeDeps, CMakeToolchain

class FBufTest(ConanFile):
	settings = "os", "arch", "compiler", "build_type"
	
	requires = "flatbuffers/23.1.21"
	tool_requires = "flatbuffers/23.1.21"

	def generate(self):
		CMakeToolchain(self).generate()
		CMakeDeps(self).generate()

# [requires]
# flatbuffers/23.1.21

# [tool_requires]
# flatbuffers/23.1.21

# [generators]
# CMakeDeps
# CMakeToolchain

# [imports]
# bin, * -> .