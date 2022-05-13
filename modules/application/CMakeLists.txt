################################################################################
cmake_minimum_required(VERSION 3.16)
################################################################################
enable_language(C)
################################################################################
project(modules_application)
###############################################################################
add_executable(${PROJECT_NAME} EXCLUDE_FROM_ALL)
target_sources(${PROJECT_NAME} PRIVATE ${PROJECT_SOURCE_DIR}/main.c)
target_link_libraries(${PROJECT_NAME} PRIVATE nrf52840_startup)
target_link_libraries(${PROJECT_NAME} PRIVATE nrf52840_system)
target_link_libraries(${PROJECT_NAME} PRIVATE libs_nrf_sdk_external_freertos)
target_link_libraries(${PROJECT_NAME} PRIVATE libs_nrf_sdk_components_ble_common)
target_link_libraries(${PROJECT_NAME} PRIVATE libs_nrf_sdk_components_ble_advertising)
target_link_libraries(${PROJECT_NAME} PRIVATE libs_nrf_sdk_components_ble_ble_services_ble_bas)
target_link_libraries(${PROJECT_NAME} PRIVATE libs_nrf_sdk_components_ble_ble_services_ble_hrs)
target_link_libraries(${PROJECT_NAME} PRIVATE libs_nrf_sdk_components_ble_ble_services_ble_dis)
target_link_libraries(${PROJECT_NAME} PRIVATE libs_nrf_sdk_components_libraries_sensorsim)
target_link_libraries(${PROJECT_NAME} PRIVATE libs_nrf_sdk_components_libraries_timer)
target_link_libraries(${PROJECT_NAME} PRIVATE libs_nrf_sdk_components_ble_peer_manager)
target_link_libraries(${PROJECT_NAME} PRIVATE libs_nrf_sdk_components_libraries_bsp)
target_link_libraries(${PROJECT_NAME} PRIVATE libs_nrf_sdk_components_libraries_fds)
target_link_libraries(${PROJECT_NAME} PRIVATE libs_nrf_sdk_integration_nrfx_legacy)
target_link_libraries(${PROJECT_NAME} PRIVATE libs_nrf_sdk_components_ble_nrf_ble_qwr)


target_link_options(${PROJECT_NAME} PRIVATE -T${PROJECT_SOURCE_DIR}/ble_app_hrs_freertos_gcc_nrf52.ld)
target_link_options(${PROJECT_NAME} PRIVATE -L${NRF_SDK_DIR}/modules/nrfx/mdk)
set_target_properties(${PROJECT_NAME} PROPERTIES LINK_DEPENDS ${PROJECT_SOURCE_DIR}/ble_app_hrs_freertos_gcc_nrf52.ld)
set_target_properties(${PROJECT_NAME} PROPERTIES SUFFIX ".elf")
set_target_properties(${PROJECT_NAME} PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR})
set_target_properties(${PROJECT_NAME} PROPERTIES RUNTIME_OUTPUT_NAME ${CMAKE_PROJECT_NAME})
################################################################################
add_custom_command(
  OUTPUT ${CMAKE_BINARY_DIR}/${PROJECT_NAME}.bin
  OUTPUT ${CMAKE_BINARY_DIR}/${PROJECT_NAME}.hex
  COMMAND ${CMAKE_OBJCOPY} ARGS -Obinary $<TARGET_FILE:${PROJECT_NAME}> ${PROJECT_NAME}.bin
  COMMAND ${CMAKE_OBJCOPY} ARGS -Oihex $<TARGET_FILE:${PROJECT_NAME}> ${PROJECT_NAME}.hex
  DEPENDS $<TARGET_FILE:${PROJECT_NAME}>
  WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
)
################################################################################
add_custom_target(${PROJECT_NAME}_exe ALL
  DEPENDS ${CMAKE_BINARY_DIR}/${PROJECT_NAME}.bin
  DEPENDS ${CMAKE_BINARY_DIR}/${PROJECT_NAME}.hex
)
################################################################################
