################################################################################
cmake_minimum_required(VERSION 3.16)
################################################################################
enable_language(C)
################################################################################
project(modules_application)
###############################################################################
add_executable(${PROJECT_NAME})
target_sources(${PROJECT_NAME} PRIVATE ${PROJECT_SOURCE_DIR}/main.c)
target_link_libraries(${PROJECT_NAME} PRIVATE nrf52840_startup)
target_link_libraries(${PROJECT_NAME} PRIVATE nrf52840_system)
target_link_libraries(${PROJECT_NAME} PRIVATE libs_nrf_sdk_external_freertos)
target_link_options(${PROJECT_NAME} PRIVATE -T${PROJECT_SOURCE_DIR}/ble_app_hrs_freertos_gcc_nrf52.ld)
target_link_options(${PROJECT_NAME} PRIVATE -L${NRF_SDK_DIR}/modules/nrfx/mdk)
################################################################################
