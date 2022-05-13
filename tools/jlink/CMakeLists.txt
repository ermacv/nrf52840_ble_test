################################################################################
cmake_minimum_required(VERSION 3.16)
###############################################################################
set(APPLICATION_HEX ${CMAKE_BINARY_DIR}/${CMAKE_PROJECT_NAME}.hex)
set(SOFTDEVICE_HEX ${NRF_SDK_DIR}/components/softdevice/s140/hex/s140_nrf52_7.2.0_softdevice.hex)
configure_file(${CMAKE_CURRENT_LIST_DIR}/CommandFile.jlink.in ${CMAKE_BINARY_DIR}/CommandFile.jlink)
################################################################################
add_custom_target(flash 
  COMMAND ${JLink_EXECUTABLE} -CommanderScript \"${CMAKE_BINARY_DIR}/CommandFile.jlink\"
  DEPENDS ${CMAKE_BINARY_DIR}/CommandFile.jlink
  DEPENDS ${APPLICATION_HEX}
  DEPENDS ${SOFTDEVICE_HEX}
  DEPENDS modules_application_exe  
)
################################################################################
