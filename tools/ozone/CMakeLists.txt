################################################################################
cmake_minimum_required(VERSION 3.16)
###############################################################################
string(TIMESTAMP CURRENT_BUILD_TIME "%d %b %Y %H:%M")
set(MCU_APPLICATION_FW_PATH ${CMAKE_BINARY_DIR}/${CMAKE_PROJECT_NAME}.elf)
set(MCU_VENDOR_PERIPHERAL_SVD_PATH "${NRF_SDK_DIR}/modules/nrfx/mdk/nrf52840.svd")
configure_file(${CMAKE_CURRENT_LIST_DIR}/ozone.jdebug.in ${CMAKE_BINARY_DIR}/ozone.jdebug)
################################################################################
