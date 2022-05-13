################################################################################
cmake_minimum_required(VERSION 3.16)
################################################################################
enable_language(C)
################################################################################
project(libs_nrf_sdk_components_ble_common)
################################################################################
add_library(${PROJECT_NAME} STATIC EXCLUDE_FROM_ALL)
target_sources(${PROJECT_NAME} PRIVATE ${NRF_SDK_DIR}/components/ble/common/ble_advdata.c)
target_sources(${PROJECT_NAME} PRIVATE ${NRF_SDK_DIR}/components/ble/common/ble_conn_params.c)
target_sources(${PROJECT_NAME} PRIVATE ${NRF_SDK_DIR}/components/ble/common/ble_conn_state.c)
target_sources(${PROJECT_NAME} PRIVATE ${NRF_SDK_DIR}/components/ble/common/ble_srv_common.c)
target_include_directories(${PROJECT_NAME} PUBLIC ${NRF_SDK_DIR}/components/ble/common)
target_link_libraries(${PROJECT_NAME} PUBLIC libs_nrf_sdk_components_libraries_util)
target_link_libraries(${PROJECT_NAME} PUBLIC libs_nrf_sdk_components_softdevice_common)
target_link_libraries(${PROJECT_NAME} PUBLIC libs_nrf_sdk_components_libraries_atomic)
target_link_libraries(${PROJECT_NAME} PUBLIC libs_nrf_sdk_components_libraries_atomic_flags)
target_link_libraries(${PROJECT_NAME} PRIVATE libs_nrf_sdk_components_libraries_timer)
################################################################################
