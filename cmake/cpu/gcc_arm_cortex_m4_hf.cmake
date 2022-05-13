################################################################################
# ARM Cortex-M4 and hard float point ABI options for GCC compiler
################################################################################
# Check the link below to get a description for ARM specific options:
# https://gcc.gnu.org/onlinedocs/gcc/ARM-Options.html
################################################################################
add_compile_options(-march=armv7e-m)
add_compile_options(-mlittle-endian)
add_compile_options(-mcpu=cortex-m4)
add_compile_options(-mthumb)
add_compile_options(-mfpu=fpv4-sp-d16)
add_compile_options(-mfloat-abi=hard)
################################################################################
# By providing ISA, CPU architecture version, FPU HW version and FPU ABI type
# to the GCC it may include default C system libraries (newlib-nano) automatically
# by using milti-lib option (check arm-none-eabi-gcc --print-multi-lib)
################################################################################
# Setup Linker options
################################################################################
# Note:
# We may avoid setting linker flags explicitly because by default CMake uses
# GCC that invokes LD and all GCC flags will be set explicitly to LD
################################################################################
add_link_options(-march=armv7e-m)
add_link_options(-mlittle-endian)
add_link_options(-mcpu=cortex-m4)
add_link_options(-mthumb)
add_link_options(-mfpu=fpv4-sp-d16)
add_link_options(-mfloat-abi=hard)
################################################################################
