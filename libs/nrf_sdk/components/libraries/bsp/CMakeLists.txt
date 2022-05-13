################################################################################
cmake_minimum_required(VERSION 3.16)
################################################################################
enable_language(C)
################################################################################
project(libs_nrf_sdk_components_libraries_bsp)
################################################################################
add_library(${PROJECT_NAME} STATIC EXCLUDE_FROM_ALL)
target_sources(${PROJECT_NAME} PRIVATE ${NRF_SDK_DIR}/components/libraries/bsp/bsp.c)
target_sources(${PROJECT_NAME} PRIVATE ${NRF_SDK_DIR}/components/libraries/bsp/bsp_btn_ble.c)
target_include_directories(${PROJECT_NAME} PUBLIC ${NRF_SDK_DIR}/components/libraries/bsp)
target_link_libraries(${PROJECT_NAME} PUBLIC libs_nrf_sdk_components_libraries_button)
target_link_libraries(${PROJECT_NAME} PUBLIC libs_nrf_sdk_components_boards)
target_link_libraries(${PROJECT_NAME} PUBLIC libs_nrf_sdk_components_softdevice_common)
target_link_libraries(${PROJECT_NAME} PUBLIC libs_nrf_sdk_components_libraries_timer)
################################################################################
