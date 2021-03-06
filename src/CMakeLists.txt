set(LIBRARY_NAME ${CMAKE_PROJECT_NAME})

file(GLOB LIB_HEADERS
    RELATIVE "${CMAKE_CURRENT_SOURCE_DIR}"
    "../include/${LIBRARY_NAME}/*.h")
file(GLOB LIB_SOURCES
    RELATIVE "${CMAKE_CURRENT_SOURCE_DIR}"
    "*.c")
add_library(${LIBRARY_NAME} SHARED ${LIB_SOURCES})

set_target_properties(${LIBRARY_NAME} PROPERTIES
    VERSION ${VERSION}
    FRAMEWORK FALSE
    PUBLIC_HEADER "${LIB_HEADERS}")

install(TARGETS ${LIBRARY_NAME}
    EXPORT ${PROJECT_NAME}Targets
    ARCHIVE DESTINATION lib COMPONENT libs
    LIBRARY DESTINATION lib COMPONENT libs
    PUBLIC_HEADER DESTINATION include/${PROJECT_NAME} COMPONENT devel
    INCLUDES DESTINATION include)
