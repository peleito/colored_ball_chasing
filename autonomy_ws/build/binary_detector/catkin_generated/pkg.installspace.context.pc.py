# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "cv_bridge;dynamic_reconfigure;geometry_msgs;object_detection;object_detection_2d;object_detection_2d_msgs;roscpp".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lbinary_detector".split(';') if "-lbinary_detector" != "" else []
PROJECT_NAME = "binary_detector"
PROJECT_SPACE_DIR = "/home/team1/autonomy_ws/install"
PROJECT_VERSION = "0.0.0"