################################################################################
# Add common warnings
################################################################################
if(CMAKE_C_COMPILER_ID STREQUAL "GNU")
    add_compile_options(-Wall)
    add_compile_options(-Wextra)
    # add_compile_options(-Werror)
endif(CMAKE_C_COMPILER_ID STREQUAL "GNU")
################################################################################
