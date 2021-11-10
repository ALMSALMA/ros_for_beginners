// Generated by gencpp from file my_robot_msgs/LightLed.msg
// DO NOT EDIT!


#ifndef MY_ROBOT_MSGS_MESSAGE_LIGHTLED_H
#define MY_ROBOT_MSGS_MESSAGE_LIGHTLED_H

#include <ros/service_traits.h>


#include <my_robot_msgs/LightLedRequest.h>
#include <my_robot_msgs/LightLedResponse.h>


namespace my_robot_msgs
{

struct LightLed
{

typedef LightLedRequest Request;
typedef LightLedResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct LightLed
} // namespace my_robot_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::my_robot_msgs::LightLed > {
  static const char* value()
  {
    return "704e7856efe58150b5b592509c2c6c05";
  }

  static const char* value(const ::my_robot_msgs::LightLed&) { return value(); }
};

template<>
struct DataType< ::my_robot_msgs::LightLed > {
  static const char* value()
  {
    return "my_robot_msgs/LightLed";
  }

  static const char* value(const ::my_robot_msgs::LightLed&) { return value(); }
};


// service_traits::MD5Sum< ::my_robot_msgs::LightLedRequest> should match
// service_traits::MD5Sum< ::my_robot_msgs::LightLed >
template<>
struct MD5Sum< ::my_robot_msgs::LightLedRequest>
{
  static const char* value()
  {
    return MD5Sum< ::my_robot_msgs::LightLed >::value();
  }
  static const char* value(const ::my_robot_msgs::LightLedRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::my_robot_msgs::LightLedRequest> should match
// service_traits::DataType< ::my_robot_msgs::LightLed >
template<>
struct DataType< ::my_robot_msgs::LightLedRequest>
{
  static const char* value()
  {
    return DataType< ::my_robot_msgs::LightLed >::value();
  }
  static const char* value(const ::my_robot_msgs::LightLedRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::my_robot_msgs::LightLedResponse> should match
// service_traits::MD5Sum< ::my_robot_msgs::LightLed >
template<>
struct MD5Sum< ::my_robot_msgs::LightLedResponse>
{
  static const char* value()
  {
    return MD5Sum< ::my_robot_msgs::LightLed >::value();
  }
  static const char* value(const ::my_robot_msgs::LightLedResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::my_robot_msgs::LightLedResponse> should match
// service_traits::DataType< ::my_robot_msgs::LightLed >
template<>
struct DataType< ::my_robot_msgs::LightLedResponse>
{
  static const char* value()
  {
    return DataType< ::my_robot_msgs::LightLed >::value();
  }
  static const char* value(const ::my_robot_msgs::LightLedResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MY_ROBOT_MSGS_MESSAGE_LIGHTLED_H