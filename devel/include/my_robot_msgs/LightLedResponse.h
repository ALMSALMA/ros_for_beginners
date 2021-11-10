// Generated by gencpp from file my_robot_msgs/LightLedResponse.msg
// DO NOT EDIT!


#ifndef MY_ROBOT_MSGS_MESSAGE_LIGHTLEDRESPONSE_H
#define MY_ROBOT_MSGS_MESSAGE_LIGHTLEDRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace my_robot_msgs
{
template <class ContainerAllocator>
struct LightLedResponse_
{
  typedef LightLedResponse_<ContainerAllocator> Type;

  LightLedResponse_()
    : success(false)  {
    }
  LightLedResponse_(const ContainerAllocator& _alloc)
    : success(false)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;





  typedef boost::shared_ptr< ::my_robot_msgs::LightLedResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::my_robot_msgs::LightLedResponse_<ContainerAllocator> const> ConstPtr;

}; // struct LightLedResponse_

typedef ::my_robot_msgs::LightLedResponse_<std::allocator<void> > LightLedResponse;

typedef boost::shared_ptr< ::my_robot_msgs::LightLedResponse > LightLedResponsePtr;
typedef boost::shared_ptr< ::my_robot_msgs::LightLedResponse const> LightLedResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::my_robot_msgs::LightLedResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::my_robot_msgs::LightLedResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::my_robot_msgs::LightLedResponse_<ContainerAllocator1> & lhs, const ::my_robot_msgs::LightLedResponse_<ContainerAllocator2> & rhs)
{
  return lhs.success == rhs.success;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::my_robot_msgs::LightLedResponse_<ContainerAllocator1> & lhs, const ::my_robot_msgs::LightLedResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace my_robot_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::my_robot_msgs::LightLedResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_robot_msgs::LightLedResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_robot_msgs::LightLedResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_robot_msgs::LightLedResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_robot_msgs::LightLedResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_robot_msgs::LightLedResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::my_robot_msgs::LightLedResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "358e233cde0c8a8bcfea4ce193f8fc15";
  }

  static const char* value(const ::my_robot_msgs::LightLedResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x358e233cde0c8a8bULL;
  static const uint64_t static_value2 = 0xcfea4ce193f8fc15ULL;
};

template<class ContainerAllocator>
struct DataType< ::my_robot_msgs::LightLedResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "my_robot_msgs/LightLedResponse";
  }

  static const char* value(const ::my_robot_msgs::LightLedResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::my_robot_msgs::LightLedResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#response\n"
"bool success\n"
"\n"
;
  }

  static const char* value(const ::my_robot_msgs::LightLedResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::my_robot_msgs::LightLedResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LightLedResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::my_robot_msgs::LightLedResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::my_robot_msgs::LightLedResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MY_ROBOT_MSGS_MESSAGE_LIGHTLEDRESPONSE_H
