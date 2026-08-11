cmake_minimum_required(VERSION 3.8)
project(fault_detector_msgs)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies
find_package(ament_cmake REQUIRED)
if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  set(ament_cmake_copyright_FOUND TRUE)
  set(ament_cmake_cpplint_FOUND TRUE)
  ament_lint_auto_find_test_dependencies()
endif()

find_package(geometry_msgs REQUIRED)
find_package(builtin_interfaces REQUIRED)
find_package(std_msgs REQUIRED)
find_package(action_msgs REQUIRED)
find_package(rosidl_default_generators REQUIRED)

rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/InspectionObjectDefinition.msg"
  "msg/InspectionRoutineDefinition.msg"
  "msg/InspectionCommand.msg"
  "msg/ComplexCommand.msg"
  "msg/BasicCommand.msg"
  "msg/CommandStatus.msg"
  "msg/CommandRequest.msg"
  "msg/OperationalIntent.msg"
  "msg/ApplicationCommandState.msg"
  "msg/TagElement.msg"
  "msg/TagElementArray.msg"
  "msg/CommandRecordControl.msg"
  "msg/StringArray.msg"
  "msg/InspectionObjectState.msg"
  "msg/InspectionObjectStateArray.msg"
  "msg/LiveInspectionObjectState.msg"
  "msg/SensorDefinition.msg"
  "msg/SensorDefinitionArray.msg"
  "srv/AddSensor.srv"
  "srv/RetireSensor.srv"
  "srv/CancelOperation.srv"
  "srv/EmergencyStop.srv"
  "action/ExecuteProbePoint.action"
  "action/ExecuteOperation.action"
  DEPENDENCIES action_msgs builtin_interfaces geometry_msgs std_msgs
)

ament_package()
