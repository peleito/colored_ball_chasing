#!/usr/bin/env python  
import rospy

import math
import tf2_ros
import geometry_msgs.msg
from geometry_msgs.msg import Polygon
import tf_conversions

if __name__ == '__main__':
    rospy.init_node('tf2_object_listener')
    tfBuffer = tf2_ros.Buffer()
    listener = tf2_ros.TransformListener(tfBuffer)

    rate = rospy.Rate(10.0)
    while not rospy.is_shutdown():
        try:
            trans = tfBuffer.lookup_transform('map', 'ball_relative', rospy.Time())
        except (tf2_ros.LookupException, tf2_ros.ConnectivityException, tf2_ros.ExtrapolationException):
            rate.sleep()
            continue

        br = tf2_ros.TransformBroadcaster()
        t = geometry_msgs.msg.TransformStamped()

        t.header.stamp = rospy.Time.now()
        t.header.frame_id = "map"
        t.child_frame_id = "ball_absolute"
        t.transform.translation.x = float(trans.transform.translation.x)
        t.transform.translation.y = float(trans.transform.translation.y)
        t.transform.translation.z = float(trans.transform.translation.z)
        q = tf_conversions.transformations.quaternion_from_euler(0, 0, 0)
        t.transform.rotation.x = q[0]
        t.transform.rotation.y = q[1]
        t.transform.rotation.z = q[2]
        t.transform.rotation.w = q[3]

        br.sendTransform(t)

        rate.sleep()
