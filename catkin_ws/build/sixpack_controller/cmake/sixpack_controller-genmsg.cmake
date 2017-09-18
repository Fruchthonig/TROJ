# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "sixpack_controller: 6 messages, 0 services")

set(MSG_I_FLAGS "-Isixpack_controller:/home/tobias/catkin_ws/src/sixpack_controller/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(sixpack_controller_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/tobias/catkin_ws/src/sixpack_controller/msg/Servo.msg" NAME_WE)
add_custom_target(_sixpack_controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sixpack_controller" "/home/tobias/catkin_ws/src/sixpack_controller/msg/Servo.msg" ""
)

get_filename_component(_filename "/home/tobias/catkin_ws/src/sixpack_controller/msg/ServoConfigArray.msg" NAME_WE)
add_custom_target(_sixpack_controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sixpack_controller" "/home/tobias/catkin_ws/src/sixpack_controller/msg/ServoConfigArray.msg" "sixpack_controller/ServoConfig"
)

get_filename_component(_filename "/home/tobias/catkin_ws/src/sixpack_controller/msg/PositionArray.msg" NAME_WE)
add_custom_target(_sixpack_controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sixpack_controller" "/home/tobias/catkin_ws/src/sixpack_controller/msg/PositionArray.msg" "sixpack_controller/Position"
)

get_filename_component(_filename "/home/tobias/catkin_ws/src/sixpack_controller/msg/ServoArray.msg" NAME_WE)
add_custom_target(_sixpack_controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sixpack_controller" "/home/tobias/catkin_ws/src/sixpack_controller/msg/ServoArray.msg" "sixpack_controller/Servo"
)

get_filename_component(_filename "/home/tobias/catkin_ws/src/sixpack_controller/msg/ServoConfig.msg" NAME_WE)
add_custom_target(_sixpack_controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sixpack_controller" "/home/tobias/catkin_ws/src/sixpack_controller/msg/ServoConfig.msg" ""
)

get_filename_component(_filename "/home/tobias/catkin_ws/src/sixpack_controller/msg/Position.msg" NAME_WE)
add_custom_target(_sixpack_controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sixpack_controller" "/home/tobias/catkin_ws/src/sixpack_controller/msg/Position.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(sixpack_controller
  "/home/tobias/catkin_ws/src/sixpack_controller/msg/Servo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sixpack_controller
)
_generate_msg_cpp(sixpack_controller
  "/home/tobias/catkin_ws/src/sixpack_controller/msg/ServoConfigArray.msg"
  "${MSG_I_FLAGS}"
  "/home/tobias/catkin_ws/src/sixpack_controller/msg/ServoConfig.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sixpack_controller
)
_generate_msg_cpp(sixpack_controller
  "/home/tobias/catkin_ws/src/sixpack_controller/msg/PositionArray.msg"
  "${MSG_I_FLAGS}"
  "/home/tobias/catkin_ws/src/sixpack_controller/msg/Position.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sixpack_controller
)
_generate_msg_cpp(sixpack_controller
  "/home/tobias/catkin_ws/src/sixpack_controller/msg/ServoArray.msg"
  "${MSG_I_FLAGS}"
  "/home/tobias/catkin_ws/src/sixpack_controller/msg/Servo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sixpack_controller
)
_generate_msg_cpp(sixpack_controller
  "/home/tobias/catkin_ws/src/sixpack_controller/msg/ServoConfig.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sixpack_controller
)
_generate_msg_cpp(sixpack_controller
  "/home/tobias/catkin_ws/src/sixpack_controller/msg/Position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sixpack_controller
)

### Generating Services

### Generating Module File
_generate_module_cpp(sixpack_controller
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sixpack_controller
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(sixpack_controller_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(sixpack_controller_generate_messages sixpack_controller_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tobias/catkin_ws/src/sixpack_controller/msg/Servo.msg" NAME_WE)
add_dependencies(sixpack_controller_generate_messages_cpp _sixpack_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tobias/catkin_ws/src/sixpack_controller/msg/ServoConfigArray.msg" NAME_WE)
add_dependencies(sixpack_controller_generate_messages_cpp _sixpack_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tobias/catkin_ws/src/sixpack_controller/msg/PositionArray.msg" NAME_WE)
add_dependencies(sixpack_controller_generate_messages_cpp _sixpack_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tobias/catkin_ws/src/sixpack_controller/msg/ServoArray.msg" NAME_WE)
add_dependencies(sixpack_controller_generate_messages_cpp _sixpack_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tobias/catkin_ws/src/sixpack_controller/msg/ServoConfig.msg" NAME_WE)
add_dependencies(sixpack_controller_generate_messages_cpp _sixpack_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tobias/catkin_ws/src/sixpack_controller/msg/Position.msg" NAME_WE)
add_dependencies(sixpack_controller_generate_messages_cpp _sixpack_controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sixpack_controller_gencpp)
add_dependencies(sixpack_controller_gencpp sixpack_controller_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sixpack_controller_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(sixpack_controller
  "/home/tobias/catkin_ws/src/sixpack_controller/msg/Servo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sixpack_controller
)
_generate_msg_lisp(sixpack_controller
  "/home/tobias/catkin_ws/src/sixpack_controller/msg/ServoConfigArray.msg"
  "${MSG_I_FLAGS}"
  "/home/tobias/catkin_ws/src/sixpack_controller/msg/ServoConfig.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sixpack_controller
)
_generate_msg_lisp(sixpack_controller
  "/home/tobias/catkin_ws/src/sixpack_controller/msg/PositionArray.msg"
  "${MSG_I_FLAGS}"
  "/home/tobias/catkin_ws/src/sixpack_controller/msg/Position.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sixpack_controller
)
_generate_msg_lisp(sixpack_controller
  "/home/tobias/catkin_ws/src/sixpack_controller/msg/ServoArray.msg"
  "${MSG_I_FLAGS}"
  "/home/tobias/catkin_ws/src/sixpack_controller/msg/Servo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sixpack_controller
)
_generate_msg_lisp(sixpack_controller
  "/home/tobias/catkin_ws/src/sixpack_controller/msg/ServoConfig.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sixpack_controller
)
_generate_msg_lisp(sixpack_controller
  "/home/tobias/catkin_ws/src/sixpack_controller/msg/Position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sixpack_controller
)

### Generating Services

### Generating Module File
_generate_module_lisp(sixpack_controller
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sixpack_controller
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(sixpack_controller_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(sixpack_controller_generate_messages sixpack_controller_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tobias/catkin_ws/src/sixpack_controller/msg/Servo.msg" NAME_WE)
add_dependencies(sixpack_controller_generate_messages_lisp _sixpack_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tobias/catkin_ws/src/sixpack_controller/msg/ServoConfigArray.msg" NAME_WE)
add_dependencies(sixpack_controller_generate_messages_lisp _sixpack_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tobias/catkin_ws/src/sixpack_controller/msg/PositionArray.msg" NAME_WE)
add_dependencies(sixpack_controller_generate_messages_lisp _sixpack_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tobias/catkin_ws/src/sixpack_controller/msg/ServoArray.msg" NAME_WE)
add_dependencies(sixpack_controller_generate_messages_lisp _sixpack_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tobias/catkin_ws/src/sixpack_controller/msg/ServoConfig.msg" NAME_WE)
add_dependencies(sixpack_controller_generate_messages_lisp _sixpack_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tobias/catkin_ws/src/sixpack_controller/msg/Position.msg" NAME_WE)
add_dependencies(sixpack_controller_generate_messages_lisp _sixpack_controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sixpack_controller_genlisp)
add_dependencies(sixpack_controller_genlisp sixpack_controller_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sixpack_controller_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(sixpack_controller
  "/home/tobias/catkin_ws/src/sixpack_controller/msg/Servo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sixpack_controller
)
_generate_msg_py(sixpack_controller
  "/home/tobias/catkin_ws/src/sixpack_controller/msg/ServoConfigArray.msg"
  "${MSG_I_FLAGS}"
  "/home/tobias/catkin_ws/src/sixpack_controller/msg/ServoConfig.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sixpack_controller
)
_generate_msg_py(sixpack_controller
  "/home/tobias/catkin_ws/src/sixpack_controller/msg/PositionArray.msg"
  "${MSG_I_FLAGS}"
  "/home/tobias/catkin_ws/src/sixpack_controller/msg/Position.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sixpack_controller
)
_generate_msg_py(sixpack_controller
  "/home/tobias/catkin_ws/src/sixpack_controller/msg/ServoArray.msg"
  "${MSG_I_FLAGS}"
  "/home/tobias/catkin_ws/src/sixpack_controller/msg/Servo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sixpack_controller
)
_generate_msg_py(sixpack_controller
  "/home/tobias/catkin_ws/src/sixpack_controller/msg/ServoConfig.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sixpack_controller
)
_generate_msg_py(sixpack_controller
  "/home/tobias/catkin_ws/src/sixpack_controller/msg/Position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sixpack_controller
)

### Generating Services

### Generating Module File
_generate_module_py(sixpack_controller
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sixpack_controller
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(sixpack_controller_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(sixpack_controller_generate_messages sixpack_controller_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tobias/catkin_ws/src/sixpack_controller/msg/Servo.msg" NAME_WE)
add_dependencies(sixpack_controller_generate_messages_py _sixpack_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tobias/catkin_ws/src/sixpack_controller/msg/ServoConfigArray.msg" NAME_WE)
add_dependencies(sixpack_controller_generate_messages_py _sixpack_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tobias/catkin_ws/src/sixpack_controller/msg/PositionArray.msg" NAME_WE)
add_dependencies(sixpack_controller_generate_messages_py _sixpack_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tobias/catkin_ws/src/sixpack_controller/msg/ServoArray.msg" NAME_WE)
add_dependencies(sixpack_controller_generate_messages_py _sixpack_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tobias/catkin_ws/src/sixpack_controller/msg/ServoConfig.msg" NAME_WE)
add_dependencies(sixpack_controller_generate_messages_py _sixpack_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tobias/catkin_ws/src/sixpack_controller/msg/Position.msg" NAME_WE)
add_dependencies(sixpack_controller_generate_messages_py _sixpack_controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sixpack_controller_genpy)
add_dependencies(sixpack_controller_genpy sixpack_controller_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sixpack_controller_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sixpack_controller)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sixpack_controller
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(sixpack_controller_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sixpack_controller)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sixpack_controller
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(sixpack_controller_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sixpack_controller)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sixpack_controller\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sixpack_controller
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(sixpack_controller_generate_messages_py std_msgs_generate_messages_py)
endif()
