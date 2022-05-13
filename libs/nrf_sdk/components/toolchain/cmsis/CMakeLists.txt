################################################################################
cmake_minimum_required(VERSION 3.16)
################################################################################
enable_language(ASM C)
################################################################################
project(libs_nrf_sdk_components_toolchain_cmsis)
################################################################################
add_library(${PROJECT_NAME} INTERFACE)
target_include_directories(${PROJECT_NAME} INTERFACE ${NRF_SDK_DIR}/components/toolchain/cmsis/include)
################################################################################
