################################################################################
cmake_minimum_required(VERSION 3.16)
################################################################################
enable_language(C)
################################################################################
project(libs_nrf_sdk_components_libraries_fds)
################################################################################
add_library(${PROJECT_NAME} STATIC EXCLUDE_FROM_ALL)
target_sources(${PROJECT_NAME} PRIVATE ${NRF_SDK_DIR}/components/libraries/fds/fds.c)
target_include_directories(${PROJECT_NAME} PUBLIC ${NRF_SDK_DIR}/components/libraries/fds)
target_link_libraries(${PROJECT_NAME} PUBLIC libs_nrf_sdk_components_libraries_util)
target_link_libraries(${PROJECT_NAME} PRIVATE libs_nrf_sdk_components_libraries_atomic_fifo)
target_link_libraries(${PROJECT_NAME} PUBLIC libs_nrf_sdk_components_libraries_atomic)
target_link_libraries(${PROJECT_NAME} PRIVATE libs_nrf_sdk_components_libraries_fstorage)
################################################################################
