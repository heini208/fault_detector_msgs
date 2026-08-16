cmake_minimum_required(VERSION 3.8)
project(fault_detector_msgs)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

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
find_package(sensor_msgs REQUIRED)
find_package(action_msgs REQUIRED)
find_package(rosidl_default_generators REQUIRED)

rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/CommandPayload.msg"
  "msg/CommandStatus.msg"
  "msg/CommandRequest.msg"
  "msg/OperationalIntent.msg"
  "msg/ApplicationCommandState.msg"
  "msg/NavigationSetupIntent.msg"
  "msg/NavigationSetupState.msg"
  "msg/ProbeSetupIntent.msg"
  "msg/ProbeSetupMotionIntent.msg"
  "msg/ProbeSetupState.msg"
  "msg/TagElement.msg"
  "msg/TagElementArray.msg"
  "msg/CommandRecordControl.msg"
  "msg/StringArray.msg"
  "msg/LiveInspectionObjectState.msg"
  "msg/SensorDefinition.msg"
  "msg/SensorDefinitionArray.msg"
  "msg/SensorAttachmentState.msg"
  "srv/AddSensor.srv"
  "srv/UpdateSensor.srv"
  "srv/DeleteSensor.srv"
  "srv/RetireSensor.srv"
  "srv/CancelOperation.srv"
  "srv/EmergencyStop.srv"
  "srv/CloseSetup.srv"
  "srv/ExecuteProbeSetup.srv"
  "srv/GetProbeReferencePreview.srv"
  "srv/CalculateProbeSurfaceOrientation.srv"
  "srv/SelectSensorAttachment.srv"
  "srv/ConfirmSensorAttachment.srv"
  "action/ExecuteProbePoint.action"
  "action/ExecuteOperation.action"
  "action/ExecuteNavigationSetup.action"
  "action/ExecuteProbeSetupMotion.action"
  "action/ExecuteProbeSurfaceVerification.action"
  "action/FinalizeProbeRefinement.action"
  "action/CaptureProbeReferenceViews.action"
  DEPENDENCIES action_msgs builtin_interfaces geometry_msgs sensor_msgs std_msgs
)

ament_package()
