# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "umnitsa_rpi: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iumnitsa_rpi:/home/derek/Documents/umnitsa/src/umnitsa_rpi/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(umnitsa_rpi_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/derek/Documents/umnitsa/src/umnitsa_rpi/msg/joystick.msg" NAME_WE)
add_custom_target(_umnitsa_rpi_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "umnitsa_rpi" "/home/derek/Documents/umnitsa/src/umnitsa_rpi/msg/joystick.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(umnitsa_rpi
  "/home/derek/Documents/umnitsa/src/umnitsa_rpi/msg/joystick.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/umnitsa_rpi
)

### Generating Services

### Generating Module File
_generate_module_cpp(umnitsa_rpi
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/umnitsa_rpi
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(umnitsa_rpi_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(umnitsa_rpi_generate_messages umnitsa_rpi_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/derek/Documents/umnitsa/src/umnitsa_rpi/msg/joystick.msg" NAME_WE)
add_dependencies(umnitsa_rpi_generate_messages_cpp _umnitsa_rpi_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(umnitsa_rpi_gencpp)
add_dependencies(umnitsa_rpi_gencpp umnitsa_rpi_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS umnitsa_rpi_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(umnitsa_rpi
  "/home/derek/Documents/umnitsa/src/umnitsa_rpi/msg/joystick.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/umnitsa_rpi
)

### Generating Services

### Generating Module File
_generate_module_eus(umnitsa_rpi
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/umnitsa_rpi
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(umnitsa_rpi_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(umnitsa_rpi_generate_messages umnitsa_rpi_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/derek/Documents/umnitsa/src/umnitsa_rpi/msg/joystick.msg" NAME_WE)
add_dependencies(umnitsa_rpi_generate_messages_eus _umnitsa_rpi_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(umnitsa_rpi_geneus)
add_dependencies(umnitsa_rpi_geneus umnitsa_rpi_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS umnitsa_rpi_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(umnitsa_rpi
  "/home/derek/Documents/umnitsa/src/umnitsa_rpi/msg/joystick.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/umnitsa_rpi
)

### Generating Services

### Generating Module File
_generate_module_lisp(umnitsa_rpi
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/umnitsa_rpi
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(umnitsa_rpi_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(umnitsa_rpi_generate_messages umnitsa_rpi_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/derek/Documents/umnitsa/src/umnitsa_rpi/msg/joystick.msg" NAME_WE)
add_dependencies(umnitsa_rpi_generate_messages_lisp _umnitsa_rpi_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(umnitsa_rpi_genlisp)
add_dependencies(umnitsa_rpi_genlisp umnitsa_rpi_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS umnitsa_rpi_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(umnitsa_rpi
  "/home/derek/Documents/umnitsa/src/umnitsa_rpi/msg/joystick.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/umnitsa_rpi
)

### Generating Services

### Generating Module File
_generate_module_nodejs(umnitsa_rpi
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/umnitsa_rpi
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(umnitsa_rpi_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(umnitsa_rpi_generate_messages umnitsa_rpi_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/derek/Documents/umnitsa/src/umnitsa_rpi/msg/joystick.msg" NAME_WE)
add_dependencies(umnitsa_rpi_generate_messages_nodejs _umnitsa_rpi_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(umnitsa_rpi_gennodejs)
add_dependencies(umnitsa_rpi_gennodejs umnitsa_rpi_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS umnitsa_rpi_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(umnitsa_rpi
  "/home/derek/Documents/umnitsa/src/umnitsa_rpi/msg/joystick.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/umnitsa_rpi
)

### Generating Services

### Generating Module File
_generate_module_py(umnitsa_rpi
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/umnitsa_rpi
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(umnitsa_rpi_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(umnitsa_rpi_generate_messages umnitsa_rpi_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/derek/Documents/umnitsa/src/umnitsa_rpi/msg/joystick.msg" NAME_WE)
add_dependencies(umnitsa_rpi_generate_messages_py _umnitsa_rpi_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(umnitsa_rpi_genpy)
add_dependencies(umnitsa_rpi_genpy umnitsa_rpi_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS umnitsa_rpi_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/umnitsa_rpi)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/umnitsa_rpi
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(umnitsa_rpi_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/umnitsa_rpi)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/umnitsa_rpi
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(umnitsa_rpi_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/umnitsa_rpi)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/umnitsa_rpi
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(umnitsa_rpi_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/umnitsa_rpi)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/umnitsa_rpi
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(umnitsa_rpi_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/umnitsa_rpi)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/umnitsa_rpi\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/umnitsa_rpi
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(umnitsa_rpi_generate_messages_py std_msgs_generate_messages_py)
endif()
