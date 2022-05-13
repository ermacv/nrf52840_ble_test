################################################################################
cmake_minimum_required(VERSION 3.16)
################################################################################
enable_language(ASM C)
################################################################################
project(libs_nrf_sdk_integration_nrfx_legacy)
################################################################################
add_library(${PROJECT_NAME} STATIC)
target_sources(${PROJECT_NAME} PRIVATE ${NRF_SDK_DIR}/integration/nrfx/legacy/nrf_drv_clock.c)
target_include_directories(${PROJECT_NAME} PUBLIC ${NRF_SDK_DIR}/integration/nrfx/legacy)
target_link_libraries(${PROJECT_NAME} PRIVATE libs_nrf_sdk_components_libraries_util)
target_link_libraries(${PROJECT_NAME} PUBLIC libs_nrf_sdk_modules_nrfx_drivers)
target_link_libraries(${PROJECT_NAME} PRIVATE libs_nrf_sdk_components_softdevice_common)
################################################################################
