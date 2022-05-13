################################################################################
cmake_minimum_required(VERSION 3.16)
################################################################################
enable_language(ASM C)
################################################################################
project(libs_nrf_sdk_integration_nrfx)
################################################################################
add_library(${PROJECT_NAME} INTERFACE)
target_include_directories(${PROJECT_NAME} INTERFACE ${NRF_SDK_DIR}/integration/nrfx)
target_link_libraries(${PROJECT_NAME} INTERFACE libs_nrf_sdk_components_libraries_util)
target_link_libraries(${PROJECT_NAME} INTERFACE libs_nrf_sdk_components_libraries_log)
################################################################################
