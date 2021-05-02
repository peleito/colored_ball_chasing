# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include;/opt/ros/kinetic/include;/opt/ros/kinetic/include/opencv-3.3.1-dev;/opt/ros/kinetic/include/opencv-3.3.1-dev/opencv;/opt/ros/kinetic/share/xmlrpcpp/cmake/../../../include/xmlrpcpp;/usr/include".split(';') if "${prefix}/include;/opt/ros/kinetic/include;/opt/ros/kinetic/include/opencv-3.3.1-dev;/opt/ros/kinetic/include/opencv-3.3.1-dev/opencv;/opt/ros/kinetic/share/xmlrpcpp/cmake/../../../include/xmlrpcpp;/usr/include" != "" else []
PROJECT_CATKIN_DEPENDS = "cv_bridge;roscpp;sensor_msgs;object_detection_2d_msgs;message_runtime".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lobject_detection_2d".split(';') if "-lobject_detection_2d" != "" else []
PROJECT_NAME = "object_detection_2d"
PROJECT_SPACE_DIR = "/home/team1/autonomy_ws/install"
PROJECT_VERSION = "0.0.0"
