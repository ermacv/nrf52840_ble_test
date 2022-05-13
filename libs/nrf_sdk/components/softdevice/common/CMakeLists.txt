################################################################################
cmake_minimum_required(VERSION 3.16)
################################################################################
enable_language(C)
################################################################################
project(libs_nrf_sdk_components_softdevice_common)
################################################################################
add_library(${PROJECT_NAME} STATIC)
target_sources(${PROJECT_NAME} PRIVATE ${NRF_SDK_DIR}/components/softdevice/common/nrf_sdh.c)
target_include_directories(${PROJECT_NAME} PUBLIC ${NRF_SDK_DIR}/components/softdevice/common)
target_link_libraries(${PROJECT_NAME} PRIVATE libs_nrf_sdk_components_libraries_util)
target_link_libraries(${PROJECT_NAME} PUBLIC libs_nrf_sdk_components_libraries_experimental_section_vars)
target_link_libraries(${PROJECT_NAME} PUBLIC libs_nrf_sdk_components_libraries_log)

# target_include_directories(${PROJECT_NAME} INTERFACE ${NRF_SDK_DIR}/components/softdevice/s113/headers/nrf52)
# target_link_libraries(${PROJECT_NAME} INTERFACE nrf52840_system)
# target_compile_definitions(${PROJECT_NAME} INTERFACE SOFTDEVICE_PRESENT=1)
################################################################################
