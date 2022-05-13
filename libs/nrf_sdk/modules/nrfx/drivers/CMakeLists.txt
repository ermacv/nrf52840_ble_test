################################################################################
cmake_minimum_required(VERSION 3.16)
################################################################################
enable_language(ASM C)
################################################################################
project(libs_nrf_sdk_modules_nrfx_drivers)
################################################################################
add_library(${PROJECT_NAME} STATIC EXCLUDE_FROM_ALL)
target_sources(${PROJECT_NAME} PRIVATE ${NRF_SDK_DIR}/modules/nrfx/drivers/src/nrfx_clock.c)
target_include_directories(${PROJECT_NAME} PUBLIC ${NRF_SDK_DIR}/modules/nrfx/drivers/include)
target_link_libraries(${PROJECT_NAME} PUBLIC libs_nrf_sdk_modules_nrfx)
################################################################################
