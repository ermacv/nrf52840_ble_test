################################################################################
cmake_minimum_required(VERSION 3.16)
################################################################################
enable_language(C)
################################################################################
project(libs_nrf_sdk_components_libraries_memobj)
################################################################################
add_library(${PROJECT_NAME} STATIC)
target_sources(${PROJECT_NAME} PRIVATE ${NRF_SDK_DIR}/components/libraries/memobj/nrf_memobj.c)
target_include_directories(${PROJECT_NAME} PUBLIC ${NRF_SDK_DIR}/components/libraries/memobj)
target_link_libraries(${PROJECT_NAME} PUBLIC libs_nrf_sdk_components_libraries_util)
target_link_libraries(${PROJECT_NAME} PUBLIC libs_nrf_sdk_components_libraries_balloc)
target_link_libraries(${PROJECT_NAME} PUBLIC libs_nrf_sdk_components_libraries_atomic)
################################################################################
