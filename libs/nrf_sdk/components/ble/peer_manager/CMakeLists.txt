################################################################################
cmake_minimum_required(VERSION 3.16)
################################################################################
enable_language(C)
################################################################################
project(libs_nrf_sdk_components_ble_peer_manager)
################################################################################
add_library(${PROJECT_NAME} STATIC EXCLUDE_FROM_ALL)
target_sources(${PROJECT_NAME} PRIVATE ${NRF_SDK_DIR}/components/ble/peer_manager/gatt_cache_manager.c)
target_sources(${PROJECT_NAME} PRIVATE ${NRF_SDK_DIR}/components/ble/peer_manager/gatts_cache_manager.c)
target_sources(${PROJECT_NAME} PRIVATE ${NRF_SDK_DIR}/components/ble/peer_manager/id_manager.c)
target_sources(${PROJECT_NAME} PRIVATE ${NRF_SDK_DIR}/components/ble/peer_manager/peer_manager.c)
target_sources(${PROJECT_NAME} PRIVATE ${NRF_SDK_DIR}/components/ble/peer_manager/peer_manager_handler.c)
target_sources(${PROJECT_NAME} PRIVATE ${NRF_SDK_DIR}/components/ble/peer_manager/peer_data_storage.c)
target_sources(${PROJECT_NAME} PRIVATE ${NRF_SDK_DIR}/components/ble/peer_manager/peer_database.c)
target_sources(${PROJECT_NAME} PRIVATE ${NRF_SDK_DIR}/components/ble/peer_manager/peer_id.c)
target_sources(${PROJECT_NAME} PRIVATE ${NRF_SDK_DIR}/components/ble/peer_manager/pm_buffer.c)
target_sources(${PROJECT_NAME} PRIVATE ${NRF_SDK_DIR}/components/ble/peer_manager/security_dispatcher.c)
target_sources(${PROJECT_NAME} PRIVATE ${NRF_SDK_DIR}/components/ble/peer_manager/security_manager.c)
target_include_directories(${PROJECT_NAME} PUBLIC ${NRF_SDK_DIR}/components/ble/peer_manager)
target_link_libraries(${PROJECT_NAME} PRIVATE libs_nrf_sdk_components_libraries_util)
target_link_libraries(${PROJECT_NAME} PRIVATE libs_nrf_sdk_components_softdevice_common)
target_link_libraries(${PROJECT_NAME} PUBLIC libs_nrf_sdk_components_ble_common)
target_link_libraries(${PROJECT_NAME} PRIVATE libs_nrf_sdk_components_libraries_fds)
target_link_libraries(${PROJECT_NAME} PRIVATE libs_nrf_sdk_components_libraries_atomic_flags)
target_link_libraries(${PROJECT_NAME} PRIVATE libs_nrf_sdk_components_libraries_mutex)
################################################################################
