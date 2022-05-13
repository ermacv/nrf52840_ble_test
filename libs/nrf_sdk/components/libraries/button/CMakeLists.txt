################################################################################
cmake_minimum_required(VERSION 3.16)
################################################################################
enable_language(C)
################################################################################
project(libs_nrf_sdk_components_libraries_button)
################################################################################
add_library(${PROJECT_NAME} STATIC EXCLUDE_FROM_ALL)
target_sources(${PROJECT_NAME} PRIVATE ${NRF_SDK_DIR}/components/libraries/button/app_button.c)
target_include_directories(${PROJECT_NAME} PUBLIC ${NRF_SDK_DIR}/components/libraries/button)
target_link_libraries(${PROJECT_NAME} PUBLIC libs_nrf_sdk_modules_nrfx_hal)
target_link_libraries(${PROJECT_NAME} PRIVATE libs_nrf_sdk_components_libraries_timer)
target_link_libraries(${PROJECT_NAME} PRIVATE libs_nrf_sdk_integration_nrfx_legacy)
################################################################################
