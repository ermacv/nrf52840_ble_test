################################################################################
cmake_minimum_required(VERSION 3.16)
# To build compile_commands.json file
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
################################################################################
# CMake specific options that should be enabled before processing the project
# Must be enabled before project()
if(NOT CMAKE_TOOLCHAIN_FILE)
    # Set cross compilation as a default target
    set(CMAKE_TOOLCHAIN_FILE ${CMAKE_CURRENT_LIST_DIR}/cmake/toolchain/gcc_arm_none_eabi.cmake)
endif()
################################################################################
enable_language(C)
################################################################################
project(NRF52840_BLE_TEST VERSION 1.0.0)
###############################################################################
# Include common files for the project:
include(${PROJECT_SOURCE_DIR}/cmake/cpu/gcc_arm_cortex_m4_hf.cmake)
include(${PROJECT_SOURCE_DIR}/cmake/common/build_options.cmake)
include(${PROJECT_SOURCE_DIR}/cmake/common/compiler_options.cmake)
include(${PROJECT_SOURCE_DIR}/cmake/common/definitions.cmake)
include(${PROJECT_SOURCE_DIR}/cmake/common/linker_options.cmake)
include(${PROJECT_SOURCE_DIR}/cmake/common/warnings.cmake)
include(${PROJECT_SOURCE_DIR}/cmake/proj/conf.cmake)
################################################################################
add_subdirectory(${PROJECT_SOURCE_DIR}/libs/nrf_sdk)
################################################################################
add_executable(${PROJECT_NAME})
target_sources(${PROJECT_NAME} PRIVATE ${PROJECT_SOURCE_DIR}/main.c)
target_link_libraries(${PROJECT_NAME} PRIVATE nrf52840_startup)
target_link_libraries(${PROJECT_NAME} PRIVATE nrf52840_system)
target_link_options(${PROJECT_NAME} PRIVATE -T${NRF_SDK_DIR}/modules/nrfx/mdk/nrf52840_xxaa.ld)
target_link_options(${PROJECT_NAME} PRIVATE -L${NRF_SDK_DIR}/modules/nrfx/mdk)
################################################################################
