################################################################################
cmake_minimum_required(VERSION 3.16)
################################################################################
enable_language(C)
################################################################################
project(libs_nrf_sdk_components_softdevice_s140)
################################################################################
add_library(${PROJECT_NAME} INTERFACE)
target_include_directories(${PROJECT_NAME} INTERFACE ${NRF_SDK_DIR}/components/softdevice/s140/headers)
target_include_directories(${PROJECT_NAME} INTERFACE ${NRF_SDK_DIR}/components/softdevice/s140/headers/nrf52)
target_link_libraries(${PROJECT_NAME} INTERFACE nrf52840_system)
target_compile_definitions(${PROJECT_NAME} INTERFACE SOFTDEVICE_PRESENT=1)
target_compile_definitions(${PROJECT_NAME} INTERFACE S140)
target_compile_definitions(${PROJECT_NAME} INTERFACE NRF_SD_BLE_API_VERSION=7)
################################################################################
