#!/usr/bin/env python

import rospy
from std_msgs.msg import Int64


if __name__=='__main__':
    rospy.init_node('number_publisher')

    pub = rospy.Publisher('/number', Int64, queue_size=10)
    rospy.loginfo("Publisher to /number has been created!")
    rate = rospy.Rate(1)
    number = Int64()
    number.data = 0
    rospy.loginfo("Publishment has been started!")

    while not rospy.is_shutdown():
        number.data += 1
        pub.publish(number)
        rate.sleep()

