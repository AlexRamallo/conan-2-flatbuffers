# Building

```
#install custom flatbuffers recipe
conan export ./flatbuffers_recipe/conanfile.py --name=flatbuffers --version=23.1.21

make
```

## Expected

1. The flatbuffers package in the build environment should use the option
  `flatc=True`, so that the compiler gets built

2. The flatbuffers package in the host environment should use the option
  `flatc=False`, since the compiler isn't needed

## Actual Result

Conan 2.0.1 only uses the options in the host environment, so the build fails
because `flatc=False` is used in the build environment, so the compiler isn't
built.