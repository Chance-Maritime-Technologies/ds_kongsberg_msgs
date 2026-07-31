cmake_minimum_required(VERSION 3.8)

project(ds_kongsberg_msgs)

find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)

find_package(builtin_interfaces REQUIRED)
find_package(std_msgs REQUIRED)
find_package(ds_core_msgs REQUIRED)

set(MSG_FILES
  msg/KongsbergKMAllRecord.msg
  msg/KongsbergKSSIS.msg
  msg/KongsbergMRZ.msg
  msg/KongsbergMRZFull.msg
  msg/KongsbergMRZsounding.msg
  msg/KongsbergMRZtxSectorInfo.msg
  msg/KongsbergRuntimeParams.msg
  msg/KongsbergSetting.msg
  msg/KongsbergStatus.msg
)

set(SRV_FILES
  srv/BistCmd.srv
  srv/LoadXmlCmd.srv
  srv/MultiSettingsCmd.srv
  srv/PingCmd.srv
  srv/PowerCmd.srv
  srv/SettingsCmd.srv
  srv/ValuesCmd.srv
)

rosidl_generate_interfaces(
    ${PROJECT_NAME}
    ${MSG_FILES}
    ${SRV_FILES}
    DEPENDENCIES
    builtin_interfaces
    std_msgs
    ds_core_msgs
)

ament_export_dependencies(rosidl_default_runtime)

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  ament_lint_auto_find_test_dependencies()
endif()

ament_package()
