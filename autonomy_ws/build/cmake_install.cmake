# Install script for directory: /home/team1/autonomy_ws/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/team1/autonomy_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/team1/autonomy_ws/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/team1/autonomy_ws/install" TYPE PROGRAM FILES "/home/team1/autonomy_ws/build/catkin_generated/installspace/_setup_util.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/team1/autonomy_ws/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/team1/autonomy_ws/install" TYPE PROGRAM FILES "/home/team1/autonomy_ws/build/catkin_generated/installspace/env.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/team1/autonomy_ws/install/setup.bash;/home/team1/autonomy_ws/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/team1/autonomy_ws/install" TYPE FILE FILES
    "/home/team1/autonomy_ws/build/catkin_generated/installspace/setup.bash"
    "/home/team1/autonomy_ws/build/catkin_generated/installspace/local_setup.bash"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/team1/autonomy_ws/install/setup.sh;/home/team1/autonomy_ws/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/team1/autonomy_ws/install" TYPE FILE FILES
    "/home/team1/autonomy_ws/build/catkin_generated/installspace/setup.sh"
    "/home/team1/autonomy_ws/build/catkin_generated/installspace/local_setup.sh"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/team1/autonomy_ws/install/setup.zsh;/home/team1/autonomy_ws/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/team1/autonomy_ws/install" TYPE FILE FILES
    "/home/team1/autonomy_ws/build/catkin_generated/installspace/setup.zsh"
    "/home/team1/autonomy_ws/build/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/team1/autonomy_ws/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/team1/autonomy_ws/install" TYPE FILE FILES "/home/team1/autonomy_ws/build/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/team1/autonomy_ws/build/gtest/cmake_install.cmake")
  include("/home/team1/autonomy_ws/build/object_detection/cmake_install.cmake")
  include("/home/team1/autonomy_ws/build/sawr/sawr_hardware/cmake_install.cmake")
  include("/home/team1/autonomy_ws/build/sawr/sawr_master/cmake_install.cmake")
  include("/home/team1/autonomy_ws/build/sawr/sawr_navigation/cmake_install.cmake")
  include("/home/team1/autonomy_ws/build/sawr/sawr_scan/cmake_install.cmake")
  include("/home/team1/autonomy_ws/build/object_detection_2d_msgs/cmake_install.cmake")
  include("/home/team1/autonomy_ws/build/object_detection_3d_msgs/cmake_install.cmake")
  include("/home/team1/autonomy_ws/build/objects2d_to_objects3d/cmake_install.cmake")
  include("/home/team1/autonomy_ws/build/follow_waypoints/cmake_install.cmake")
  include("/home/team1/autonomy_ws/build/objects_to_markers/cmake_install.cmake")
  include("/home/team1/autonomy_ws/build/object_detection_2d/cmake_install.cmake")
  include("/home/team1/autonomy_ws/build/binary_detector/cmake_install.cmake")
  include("/home/team1/autonomy_ws/build/feature_detector/cmake_install.cmake")
  include("/home/team1/autonomy_ws/build/hsv_filter/cmake_install.cmake")
  include("/home/team1/autonomy_ws/build/morphology_filter/cmake_install.cmake")
  include("/home/team1/autonomy_ws/build/object_detection_2d_nodes/cmake_install.cmake")
  include("/home/team1/autonomy_ws/build/object_detection_2d_vis/cmake_install.cmake")
  include("/home/team1/autonomy_ws/build/object_painter/cmake_install.cmake")
  include("/home/team1/autonomy_ws/build/ros_tutorials/opencv/cmake_install.cmake")
  include("/home/team1/autonomy_ws/build/experimental_robotics_course/src/simple_drive/cmake_install.cmake")
  include("/home/team1/autonomy_ws/build/object_detection_3d/cmake_install.cmake")
  include("/home/team1/autonomy_ws/build/distance_filter/cmake_install.cmake")
  include("/home/team1/autonomy_ws/build/sawr/sawr_mapping/cmake_install.cmake")
  include("/home/team1/autonomy_ws/build/shape_detector/cmake_install.cmake")
  include("/home/team1/autonomy_ws/build/object_detection_3d_nodes/cmake_install.cmake")
  include("/home/team1/autonomy_ws/build/tracker/cmake_install.cmake")
  include("/home/team1/autonomy_ws/build/sawr/sawr_description/cmake_install.cmake")
  include("/home/team1/autonomy_ws/build/rtabmap_ros/cmake_install.cmake")
  include("/home/team1/autonomy_ws/build/experimental_robotics_course/src/thk_nav/cmake_install.cmake")
  include("/home/team1/autonomy_ws/build/experimental_robotics_course/src/diff_drive_controller/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/team1/autonomy_ws/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
