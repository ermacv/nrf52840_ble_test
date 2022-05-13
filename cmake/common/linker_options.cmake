################################################################################
# Add common linker options
################################################################################
if(CMAKE_C_COMPILER_ID STREQUAL "GNU")
    # Enable ARM/MCU specific options only when crosscompilitaion is running
    if (CMAKE_CROSSCOMPILING)
        add_link_options(-Wl,--gc-sections)
        add_link_options(-Wl,--print-memory-usage)
        # Newlib specific options:
        # Enable nano option:
        add_link_options(--specs=nano.specs)
        add_link_options(--specs=nosys.specs)
    endif(CMAKE_CROSSCOMPILING)
endif(CMAKE_C_COMPILER_ID STREQUAL "GNU")
################################################################################
