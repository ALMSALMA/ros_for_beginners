#!/usr/bin/env python

import rospy
from std_msgs.msg import Int64
from std_srvs.srv import SetBool

def sub_cb(msg):
    counter = msg.data
    rospy.loginfo("msg recieved counter is: " + str(counter))
    if counter >= 10:
        try:
            response = client(True)
            rospy.loginfo("Reset order is sent")
            rospy.loginfo("Success is: " + str(response.success))
            rospy.loginfo("message is: " + str(response.message))
            counter = 0
        except rospy.ServiceException as e:
            rospy.logwarn("Service failed " + str(e))


if __name__ == '__main__':

    rospy.init_node("reset_nember_count_client")
    
    rospy.loginfo("Waiting for service server!")
    rospy.wait_for_service("/reset_number_count")
    rospy.loginfo("Service server has been started!")
    
    client = rospy.ServiceProxy("/reset_number_count", SetBool)

    sub = rospy.Subscriber("/number_count", Int64, sub_cb)
    rospy.loginfo("Subscriber is ready!")

    rospy.spin()
