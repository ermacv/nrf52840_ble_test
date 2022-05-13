################################################################################
# Add common compiler options
################################################################################
if(CMAKE_C_COMPILER_ID STREQUAL "GNU")
    # Omit unused data and functions to reduce executable size
    add_compile_options(-fdata-sections)
    add_compile_options(-ffunction-sections)
    add_compile_options(-fno-strict-aliasing)
    add_compile_options(-fdiagnostics-color=always)
    add_compile_options(-fno-builtin)
    add_compile_options(-fshort-enums)
endif(CMAKE_C_COMPILER_ID STREQUAL "GNU")
################################################################################
# Add common language standards
################################################################################
# C
set(CMAKE_C_STANDARD 99)
set(CMAKE_C_STANDARD_REQUIRED TRUE)
set(CMAKE_C_EXTENSIONS ON)
# C++
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)
set(CMAKE_CXX_EXTENSIONS ON)
################################################################################
