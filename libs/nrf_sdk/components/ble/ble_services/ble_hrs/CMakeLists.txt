################################################################################
cmake_minimum_required(VERSION 3.16)
################################################################################
enable_language(C)
################################################################################
project(libs_nrf_sdk_components_ble_ble_services_ble_hrs)
################################################################################
add_library(${PROJECT_NAME} STATIC EXCLUDE_FROM_ALL)
target_sources(${PROJECT_NAME} PRIVATE ${NRF_SDK_DIR}/components/ble/ble_services/ble_hrs/ble_hrs.c)
target_include_directories(${PROJECT_NAME} PUBLIC ${NRF_SDK_DIR}/components/ble/ble_services/ble_hrs)
target_link_libraries(${PROJECT_NAME} PRIVATE libs_nrf_sdk_components_libraries_util)
target_link_libraries(${PROJECT_NAME} PUBLIC libs_nrf_sdk_components_ble_common)
target_link_libraries(${PROJECT_NAME} PUBLIC libs_nrf_sdk_components_softdevice_common)
target_link_libraries(${PROJECT_NAME} PUBLIC libs_nrf_sdk_components_ble_nrf_ble_gatt)

################################################################################
