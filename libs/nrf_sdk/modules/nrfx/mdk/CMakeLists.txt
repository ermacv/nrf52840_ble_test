################################################################################
cmake_minimum_required(VERSION 3.16)
################################################################################
enable_language(ASM C)
################################################################################
project(libs_nrf_sdk_modules_nrfx_mdk)
################################################################################
add_library(nrf52840_startup STATIC EXCLUDE_FROM_ALL)
target_sources(nrf52840_startup PRIVATE ${NRF_SDK_DIR}/modules/nrfx/mdk/gcc_startup_nrf52840.S)
target_compile_definitions(nrf52840_startup PRIVATE __STACK_SIZE=16384)
target_compile_definitions(nrf52840_startup PRIVATE __HEAP_SIZE=16384)
################################################################################
add_library(nrf52840_system STATIC EXCLUDE_FROM_ALL)
target_sources(nrf52840_system PRIVATE ${NRF_SDK_DIR}/modules/nrfx/mdk/system_nrf52840.c)
target_include_directories(nrf52840_system PUBLIC ${NRF_SDK_DIR}/modules/nrfx/mdk)
target_compile_definitions(nrf52840_system PUBLIC NRF52840_XXAA)
target_compile_definitions(nrf52840_system PRIVATE CONFIG_GPIO_AS_PINRESET)
target_link_libraries(nrf52840_system PUBLIC libs_nrf_sdk_components_toolchain_cmsis)
################################################################################
