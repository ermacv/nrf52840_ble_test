###############################################################################
# Configuration file for gcc-arm-none-eabi toolchain.
# It should set variable TOOLCHAIN_BIN_DIR that will be used by the main
# toolchain file
###############################################################################
# Check for env variable where compiler is placed 
if(DEFINED ARM_GCC_TOOLCHAIN_DIR)
	set(ARM_GCC_TOOLCHAIN_DIR "${ARM_GCC_TOOLCHAIN_DIR}")
	set(ENV{ARM_GCC_TOOLCHAIN_DIR} ${ARM_GCC_TOOLCHAIN_DIR})
elseif(DEFINED ENV{ARM_GCC_TOOLCHAIN_DIR})
	set(ARM_GCC_TOOLCHAIN_DIR $ENV{ARM_GCC_TOOLCHAIN_DIR})
else()
	message(FATAL_ERROR "ARM_GCC_TOOLCHAIN_DIR is not provided")
endif()

###############################################################################
# Set compiler extension. Depends on current host system.
if(WIN32)
	set(HOST_SYS_EXE_EXTENSION ".exe")
elseif(UNIX)
	set(HOST_SYS_EXE_EXTENSION "")
endif()
###############################################################################
set(TARGET_TRIPLET "arm-none-eabi" CACHE INTERNAL "GNU ARM Embedded Toolchain triplet")
set(TOOLCHAIN_BIN_DIR "${ARM_GCC_TOOLCHAIN_DIR}/bin/" CACHE INTERNAL "GCC toolchain bin/ folder dir")
###############################################################################
