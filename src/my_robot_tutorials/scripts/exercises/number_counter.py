#!/usr/bin/env python

import rospy
from std_msgs.msg import Int64
from std_srvs.srv import SetBool, SetBoolResponse

def recieve_number_cb(number):
    counter.data += 1
    pub.publish(counter)
    rospy.loginfo("New number recieved, Number: " + str(number.data))
    rospy.loginfo("New count: " + str(counter.data))

def reset_count_cb(req):
    if req.data:
        counter.data = 0
        rospy.loginfo("Counter has been reset") 
        response.success = True
        response.message = "Counter has been reset successfully"

    else:
        rospy.loginfo("Counter did not reset")
        response.success = False
        response.message = "Counter did not reset"

    return response

if __name__=='__main__':
    rospy.init_node('number_counter')
    
    pub = rospy.Publisher('/number_count', Int64, queue_size=10)
    rospy.loginfo("Publisher to /number_count has been created!")
    counter = Int64()
    counter.data = 0

    sub = rospy.Subscriber('/number', Int64, recieve_number_cb)
    rospy.loginfo("Subscriber to /number has been created!") 
    
    service = rospy.Service("/reset_number_count", SetBool, reset_count_cb)
    response = SetBoolResponse()
    rospy.loginfo("Service has been created!")
    
    rospy.spin()

