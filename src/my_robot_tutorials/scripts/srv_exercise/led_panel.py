#!/usr/bin/env python

import rospy
from my_robot_msgs.srv import LightLed


def set_led_cb(req):

    rospy.loginfo("Request recieved!")
    led_number = req.led_number
    led_status = req.led_state
    success = True

    if led_number == 1:
        led_no = "first"
    elif led_number == 2:
        led_no = "Second"
    elif led_number == 3:
        led_no = "third"
    else:
        success = False

    if led_status == 1:
        led_stat = "on"
    elif led_status == 0:
        led_stat = "off"
    else:
        success = False

    if success:
        rospy.loginfo("The " + str(led_no) + " led is " + str(led_stat) + ".")
    else:
	rospy.loginfo("Request is invalid!")

    return success



if __name__ == '__main__':
    rospy.init_node("led_panel")

    rospy.Service('/set_led', LightLed, set_led_cb)
    rospy.loginfo("Server is launched!")

    rospy.spin()
