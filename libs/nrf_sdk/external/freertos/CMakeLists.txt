################################################################################
cmake_minimum_required(VERSION 3.16)
################################################################################
enable_language(C)
################################################################################
project(libs_nrf_sdk_external_freertos)
################################################################################
add_library(${PROJECT_NAME} STATIC EXCLUDE_FROM_ALL)
target_sources(${PROJECT_NAME} PRIVATE ${NRF_SDK_DIR}/external/freertos/source/croutine.c)
target_sources(${PROJECT_NAME} PRIVATE ${NRF_SDK_DIR}/external/freertos/source/event_groups.c)
target_sources(${PROJECT_NAME} PRIVATE ${NRF_SDK_DIR}/external/freertos/source/list.c)
target_sources(${PROJECT_NAME} PRIVATE ${NRF_SDK_DIR}/external/freertos/source/queue.c)
target_sources(${PROJECT_NAME} PRIVATE ${NRF_SDK_DIR}/external/freertos/source/stream_buffer.c)
target_sources(${PROJECT_NAME} PRIVATE ${NRF_SDK_DIR}/external/freertos/source/tasks.c)
target_sources(${PROJECT_NAME} PRIVATE ${NRF_SDK_DIR}/external/freertos/source/timers.c)
target_sources(${PROJECT_NAME} PRIVATE ${NRF_SDK_DIR}/external/freertos/source/portable/MemMang/heap_4.c)
target_include_directories(${PROJECT_NAME} PUBLIC ${NRF_SDK_DIR}/external/freertos/source/include)
################################################################################
target_include_directories(${PROJECT_NAME} PUBLIC ${PROJECT_SOURCE_DIR})
target_link_libraries(${PROJECT_NAME} PUBLIC libs_nrf_sdk_components_libraries_util)
################################################################################
target_sources(${PROJECT_NAME} PRIVATE ${NRF_SDK_DIR}/external/freertos/portable/GCC/nrf52/port.c)
target_include_directories(${PROJECT_NAME} PUBLIC ${NRF_SDK_DIR}/external/freertos/portable/GCC/nrf52)
target_sources(${PROJECT_NAME} PRIVATE ${NRF_SDK_DIR}/external/freertos/portable/CMSIS/nrf52/port_cmsis.c)
target_sources(${PROJECT_NAME} PRIVATE ${NRF_SDK_DIR}/external/freertos/portable/CMSIS/nrf52/port_cmsis_systick.c)
target_include_directories(${PROJECT_NAME} PUBLIC ${NRF_SDK_DIR}/external/freertos/portable/CMSIS/nrf52)
target_link_libraries(${PROJECT_NAME} PRIVATE libs_nrf_sdk_modules_nrfx_hal)

target_link_libraries(${PROJECT_NAME} PRIVATE libs_nrf_sdk_components_softdevice_common)
target_link_libraries(${PROJECT_NAME} PRIVATE libs_nrf_sdk_integration_nrfx_legacy)
################################################################################
target_compile_definitions(${PROJECT_NAME} PUBLIC FREERTOS)
################################################################################
