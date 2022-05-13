################################################################################
cmake_minimum_required(VERSION 3.16)
################################################################################
enable_language(C)
################################################################################
project(libs_nrf_sdk_components_libraries_mutex)
################################################################################
add_library(${PROJECT_NAME} INTERFACE)
target_include_directories(${PROJECT_NAME} INTERFACE ${NRF_SDK_DIR}/components/libraries/mutex)
# target_link_libraries(${PROJECT_NAME} PUBLIC libs_nrf_sdk_components_libraries_util)
# target_link_libraries(${PROJECT_NAME} PUBLIC libs_nrf_sdk_components_libraries_balloc)
# target_link_libraries(${PROJECT_NAME} PUBLIC libs_nrf_sdk_components_libraries_atomic)
################################################################################
