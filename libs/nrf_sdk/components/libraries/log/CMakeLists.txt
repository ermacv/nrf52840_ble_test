################################################################################
cmake_minimum_required(VERSION 3.16)
################################################################################
enable_language(C)
################################################################################
project(libs_nrf_sdk_components_libraries_log)
################################################################################
add_library(${PROJECT_NAME} STATIC EXCLUDE_FROM_ALL)
target_sources(${PROJECT_NAME} PRIVATE ${NRF_SDK_DIR}/components/libraries/log/src/nrf_log_backend_rtt.c)
target_sources(${PROJECT_NAME} PRIVATE ${NRF_SDK_DIR}/components/libraries/log/src/nrf_log_backend_serial.c)
target_sources(${PROJECT_NAME} PRIVATE ${NRF_SDK_DIR}/components/libraries/log/src/nrf_log_default_backends.c)
target_sources(${PROJECT_NAME} PRIVATE ${NRF_SDK_DIR}/components/libraries/log/src/nrf_log_frontend.c)
target_sources(${PROJECT_NAME} PRIVATE ${NRF_SDK_DIR}/components/libraries/log/src/nrf_log_str_formatter.c)
target_include_directories(${PROJECT_NAME} PUBLIC ${NRF_SDK_DIR}/components/libraries/log/src)
target_include_directories(${PROJECT_NAME} PUBLIC ${NRF_SDK_DIR}/components/libraries/log)
target_link_libraries(${PROJECT_NAME} PRIVATE libs_nrf_sdk_components_libraries_util)
target_link_libraries(${PROJECT_NAME} PUBLIC libs_nrf_sdk_components_libraries_experimental_section_vars)
target_link_libraries(${PROJECT_NAME} PUBLIC libs_nrf_sdk_components_libraries_memobj)
target_link_libraries(${PROJECT_NAME} PUBLIC libs_nrf_sdk_components_libraries_strerror)
target_link_libraries(${PROJECT_NAME} PUBLIC libs_nrf_sdk_external_fprintf)
target_link_libraries(${PROJECT_NAME} PRIVATE libs_nrf_sdk_components_libraries_ringbuf)
target_link_libraries(${PROJECT_NAME} PRIVATE libs_nrf_sdk_components_libraries_delay)
target_link_libraries(${PROJECT_NAME} PRIVATE libs_nrf_sdk_external_segger_rtt)
################################################################################
