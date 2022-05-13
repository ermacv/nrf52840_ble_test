################################################################################
cmake_minimum_required(VERSION 3.16)
################################################################################
enable_language(C)
################################################################################
project(libs_nrf_sdk_external_segger_rtt)
################################################################################
add_library(${PROJECT_NAME} STATIC EXCLUDE_FROM_ALL)
target_sources(${PROJECT_NAME} PRIVATE ${NRF_SDK_DIR}/external/segger_rtt/SEGGER_RTT.c)
target_sources(${PROJECT_NAME} PRIVATE ${NRF_SDK_DIR}/external/segger_rtt/SEGGER_RTT_printf.c)
target_sources(${PROJECT_NAME} PRIVATE ${NRF_SDK_DIR}/external/segger_rtt/SEGGER_RTT_Syscalls_GCC.c)
target_include_directories(${PROJECT_NAME} PUBLIC ${NRF_SDK_DIR}/external/segger_rtt)
target_link_libraries(${PROJECT_NAME} PUBLIC libs_nrf_sdk_components_libraries_util)
################################################################################
