################################################################################
# Packages needed for project
################################################################################
if(${CMAKE_HOST_SYSTEM_NAME} STREQUAL "Windows")
    find_program(JLink_EXECUTABLE JLink)
elseif(${CMAKE_HOST_SYSTEM_NAME} STREQUAL "Linux")
    find_program(JLink_EXECUTABLE JLinkExe)
else()
    message(FATAL_ERROR "Unsupported OS")
endif()
################################################################################
