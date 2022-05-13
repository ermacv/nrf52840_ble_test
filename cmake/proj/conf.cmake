################################################################################
# Project specific options
################################################################################
# SiLabs specific settings
if(DEFINED NRF_SDK_DIR)
	set(NRF_SDK_DIR "${NRF_SDK_DIR}")
elseif(DEFINED ENV{NRF_SDK_DIR})
	set(NRF_SDK_DIR $ENV{NRF_SDK_DIR})
else()
	message(FATAL_ERROR "NRF_SDK_DIR is not provided")
endif()
################################################################################

