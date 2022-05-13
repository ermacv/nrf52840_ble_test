###############################################################################
# Main file for gcc-arm-none-eabi toolchain that sets pathes for binutils
# executables
################################################################################
# Note:
# There is a CMAKE_CROSSCOMPILING variable. Checking this variable CMake can
# understand what toolchain/compiler is used and what is the target platform
# You don't need to set this variable manually when CMAKE_SYSTEM_NAME and
# CMAKE_SYSTEM_PROCESSOR were provided. It will be set automatically when
# variables value is different from a current host system.
# Set target system name (no system):
set(CMAKE_SYSTEM_NAME Generic)
# Set target system processor name:
set(CMAKE_SYSTEM_PROCESSOR arm)
################################################################################
# Project preconditions
include(${CMAKE_CURRENT_LIST_DIR}/gcc_arm_none_eabi_conf.cmake)
################################################################################
# Set toolchain binutils
set(CMAKE_C_COMPILER "${TOOLCHAIN_BIN_DIR}${TARGET_TRIPLET}-gcc${HOST_SYS_EXE_EXTENSION}" CACHE INTERNAL "")
set(CMAKE_ASM_COMPILER "${TOOLCHAIN_BIN_DIR}${TARGET_TRIPLET}-gcc${HOST_SYS_EXE_EXTENSION}" CACHE INTERNAL "")
set(CMAKE_CXX_COMPILER "${TOOLCHAIN_BIN_DIR}${TARGET_TRIPLET}-g++${HOST_SYS_EXE_EXTENSION}" CACHE INTERNAL "")
set(CMAKE_OBJCOPY "${TOOLCHAIN_BIN_DIR}${TARGET_TRIPLET}-objcopy${HOST_SYS_EXE_EXTENSION}" CACHE INTERNAL "")
set(CMAKE_SIZE "${TOOLCHAIN_BIN_DIR}${TARGET_TRIPLET}-size${HOST_SYS_EXE_EXTENSION}" CACHE INTERNAL "")
set(CMAKE_OBJDUMP "${TOOLCHAIN_BIN_DIR}${TARGET_TRIPLET}-objdump${HOST_SYS_EXE_EXTENSION}" CACHE INTERNAL "")
set(CMAKE_LINKER "${TOOLCHAIN_BIN_DIR}${TARGET_TRIPLET}-ld${HOST_SYS_EXE_EXTENSION}" CACHE INTERNAL "")
set(CMAKE_RANLIB "${TOOLCHAIN_BIN_DIR}${TARGET_TRIPLET}-ranlib${HOST_SYS_EXE_EXTENSION}" CACHE INTERNAL "")
set(CMAKE_AR "${TOOLCHAIN_BIN_DIR}${TARGET_TRIPLET}-ar${HOST_SYS_EXE_EXTENSION}" CACHE INTERNAL "")
set(CMAKE_NM "${TOOLCHAIN_BIN_DIR}${TARGET_TRIPLET}-nm${HOST_SYS_EXE_EXTENSION}" CACHE INTERNAL "")
set(CMAKE_STRIP "${TOOLCHAIN_BIN_DIR}${TARGET_TRIPLET}-strip${HOST_SYS_EXE_EXTENSION}" CACHE INTERNAL "")
################################################################################
# CMake compiles a lib before building a project
# Note:
# by default CMake tries to build an executable to check that provided
# toolchain/compiler is valid and then it tries to run it.
# It is not possible to run crosscompilation target executable on host machine
# So there should be defined another way how it can be done: CMake should build
# a static library from its source files. If the library was created then
# passed toolchain is valid.
set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)
################################################################################
