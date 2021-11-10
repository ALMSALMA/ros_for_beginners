#!/usr/bin/env python

import rospy
from std_msgs.msg import String

def sub_callback(msg):
    rospy.loginfo("Message recieved: " + str(msg.data))


if __name__=='__main__':
    rospy.init_node('smartphone')

    sub = rospy.Subscriber('/robot_news_radio', String, sub_callback)

    rospy.spin()
    
