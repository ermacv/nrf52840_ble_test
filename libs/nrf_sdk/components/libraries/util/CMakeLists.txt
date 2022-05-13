################################################################################
cmake_minimum_required(VERSION 3.16)
################################################################################
enable_language(C)
################################################################################
project(libs_nrf_sdk_components_libraries_util)
################################################################################
add_library(${PROJECT_NAME} STATIC)
target_sources(${PROJECT_NAME} PRIVATE ${NRF_SDK_DIR}/components/libraries/util/app_util_platform.c)
target_sources(${PROJECT_NAME} PRIVATE ${NRF_SDK_DIR}/components/libraries/util/app_error.c)
target_sources(${PROJECT_NAME} PRIVATE ${NRF_SDK_DIR}/components/libraries/util/app_error_weak.c)
target_include_directories(${PROJECT_NAME} PUBLIC ${NRF_SDK_DIR}/components/libraries/util)
target_include_directories(${PROJECT_NAME} PUBLIC ${NRF_SDK_DIR}/components/libraries/util)
target_include_directories(${PROJECT_NAME} PUBLIC ${PROJECT_SOURCE_DIR})
target_link_libraries(${PROJECT_NAME} PUBLIC nrf52840_system)
target_link_libraries(${PROJECT_NAME} PUBLIC libs_nrf_sdk_components_softdevice_s113)
target_link_libraries(${PROJECT_NAME} PRIVATE libs_nrf_sdk_components_libraries_log)
target_link_libraries(${PROJECT_NAME} PRIVATE libs_nrf_sdk_components_libraries_strerror)
################################################################################
