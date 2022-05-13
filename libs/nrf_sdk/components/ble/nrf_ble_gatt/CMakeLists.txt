################################################################################
cmake_minimum_required(VERSION 3.16)
################################################################################
enable_language(C)
################################################################################
project(libs_nrf_sdk_components_ble_nrf_ble_gatt)
################################################################################
add_library(${PROJECT_NAME} STATIC EXCLUDE_FROM_ALL)
target_sources(${PROJECT_NAME} PRIVATE ${NRF_SDK_DIR}/components/ble/nrf_ble_gatt/nrf_ble_gatt.c)
target_include_directories(${PROJECT_NAME} PUBLIC ${NRF_SDK_DIR}/components/ble/nrf_ble_gatt)
target_link_libraries(${PROJECT_NAME} PRIVATE libs_nrf_sdk_components_libraries_util)
target_link_libraries(${PROJECT_NAME} PRIVATE libs_nrf_sdk_components_softdevice_common)
target_link_libraries(${PROJECT_NAME} PUBLIC libs_nrf_sdk_components_libraries_log)
################################################################################
