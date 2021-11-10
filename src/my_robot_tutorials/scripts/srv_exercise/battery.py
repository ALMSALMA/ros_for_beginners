#!/usr/bin/env python

import rospy
from my_robot_msgs.srv import LightLed

if __name__ == '__main__':
    rospy.init_node("battery")
    
    rospy.loginfo("Waiting for server!")
    rospy.wait_for_service('/set_led')
    rospy.loginfo("Service server has been launched@")

    set_led = rospy.ServiceProxy('/set_led', LightLed)
    rospy.loginfo("Client to /set_led service is created!")
    
    while not rospy.is_shutdown():
        rospy.loginfo("Battery is full.")
        response = set_led(3, 0)
        #rospy.loginfo(response)
        rospy.sleep(7)

        rospy.loginfo("Battery is empty!")
        response = set_led(3, 1)
        rospy.sleep(3)
        #rospy.loginfo(response)


