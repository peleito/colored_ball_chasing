#!/usr/bin/env python
import rospy
from geometry_msgs.msg import Twist
from object_detection_2d_msgs.msg import DetectedObject2DArray
from sensor_msgs.msg import PointCloud2
import sensor_msgs.point_cloud2 as pc2
import tf2_ros
import roslib
import tf_conversions
import geometry_msgs.msg

processing = False
currentCloud = None
x = 0
y = 0
z = 0

def objSub(data):
    global x
    global y
    global z
    #print(currentCloud)
    if currentCloud!=None:
        
        xPixel = data.objects[-1].polygon.points[0].x
        #print(xPixel)
        yPixel = data.objects[-1].polygon.points[0].y
        #print(yPixel)
        processing = True
        gen = pc2.read_points(currentCloud, skip_nans=True, field_names=('x','y','z'), uvs=[[int(xPixel),int(yPixel)]])
        #y = pc2.read_points(currentCloud, skip_nans=True, field_names=('y'), uvs=[[int(xPixel),int(yPixel)]])
        #z = pc2.read_points(currentCloud, skip_nans=True, field_names=('z'), uvs=[[int(xPixel),int(yPixel)]])
        #print(x)
        #print(y)
        #print(z)
        for p in gen:
            x = p[0]
            y = p[1]
            z = p[2]
            #print(p)
            break
        processing = False
        #print(x)
        #print(y)
        #print(z)


        br = tf2_ros.TransformBroadcaster()
        t = geometry_msgs.msg.TransformStamped()

        t.header.stamp = rospy.Time.now()
        t.header.frame_id = "d400_link"
        t.child_frame_id = "ball_relative"
        t.transform.translation.x = float(z)
        t.transform.translation.y = float(-x)
        t.transform.translation.z = float(-y)
        q = tf_conversions.transformations.quaternion_from_euler(0, 0, 0)
        t.transform.rotation.x = q[0]
        t.transform.rotation.y = q[1]
        t.transform.rotation.z = q[2]
        t.transform.rotation.w = q[3]

        br.sendTransform(t)
    processing = False


def pc2Sub(data):
    global currentCloud
    if not processing:
        currentCloud = data
    
def listener():

    # In ROS, nodes are uniquely named. If two nodes with the same
    # name are launched, the previous one is kicked off. The
    # anonymous=True flag means that rospy will choose a unique
    # name for our 'listener' node so that multiple listeners can
    # run simultaneously.
    rospy.init_node('depth_extractor', anonymous=True)

    rospy.Subscriber("detected_objects_2d", DetectedObject2DArray, objSub)
    rospy.Subscriber("d400/camera/depth_registered/points", PointCloud2, pc2Sub)

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    listener()
