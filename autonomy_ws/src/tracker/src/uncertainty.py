#!/usr/bin/env python  
import rospy

import math
import tf2_ros
import geometry_msgs.msg
from geometry_msgs.msg import PoseStamped
import tf_conversions
from visualization_msgs.msg import Marker

if __name__ == '__main__':
    pub = rospy.Publisher('visualization_marker', Marker, queue_size=10)
    rospy.init_node('uncertainty')
    tfBuffer_abs = tf2_ros.Buffer()
    listener_abs = tf2_ros.TransformListener(tfBuffer_abs)
    tfBuffer_rel = tf2_ros.Buffer()
    listener_rel = tf2_ros.TransformListener(tfBuffer_rel)

    rate = rospy.Rate(10.0)
    while not rospy.is_shutdown():
        try:
            trans_abs = tfBuffer_abs.lookup_transform('map', 'ball_absolute', rospy.Time())
        except (tf2_ros.LookupException, tf2_ros.ConnectivityException, tf2_ros.ExtrapolationException):
            rate.sleep()
            continue
            
        try:
            trans_rel = tfBuffer_rel.lookup_transform('d400_link', 'ball_relative', rospy.Time())
        except (tf2_ros.LookupException, tf2_ros.ConnectivityException, tf2_ros.ExtrapolationException):
            rate.sleep()
            continue
        
        marker = Marker()
        
        marker.header.frame_id = "map"
        marker.header.stamp = rospy.Time.now()
        marker.ns = "ball_uncertainty"
        marker.id = 0
        marker.type = marker.SPHERE
        marker.action = marker.ADD
        
        marker.pose.position.x = float(trans_abs.transform.translation.x)
        marker.pose.position.y = float(trans_abs.transform.translation.y)
        marker.pose.position.z = float(trans_abs.transform.translation.z)
        marker.pose.orientation.x = 0.0
        marker.pose.orientation.y = 0.0
        marker.pose.orientation.z = 0.0
        marker.pose.orientation.w = 1.0
        
        d = float(trans_rel.transform.translation.x)
        t = float(-1*trans_rel.transform.translation.y)
        h = float(-1*trans_rel.transform.translation.z)
        
        sigma_x = (-0.015*t+0.2)+(0.065*d-0.09)+(0.27*h+0.12)
        sigma_y = (0.002*t+0.012)+(0.002*d-0.003)+(0.011*h+0.003)
        sigma_z = (-0.005*t+0.012)+(0.0003*d+0.01)+(0.024*h+0.013)
        
        marker.scale.x = 0.15+sigma_x
        marker.scale.y = 0.15+sigma_y
        marker.scale.z = 0.15+sigma_z
        
        marker.color.a = 1.0
        marker.color.r = 0.0
        marker.color.g = 1.0
        marker.color.b = 0.0
        
        pub.publish(marker)

        file1 = open("uncertainties.txt","a")
        str1 = "(" + str(trans_abs.transform.translation.x) + "," + str(trans_abs.transform.translation.y) + "," + str(trans_abs.transform.translation.z) + ") +- (" + str(sigma_x) + "," + str(sigma_y) + "," + str(sigma_z) + ")\n"
        file1.write(str1)
        file1.close()

        rate.sleep()
