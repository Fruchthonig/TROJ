// Generated by gencpp from file i2cpwm_board/DriveModeResponse.msg
// DO NOT EDIT!


#ifndef I2CPWM_BOARD_MESSAGE_DRIVEMODERESPONSE_H
#define I2CPWM_BOARD_MESSAGE_DRIVEMODERESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace i2cpwm_board
{
template <class ContainerAllocator>
struct DriveModeResponse_
{
  typedef DriveModeResponse_<ContainerAllocator> Type;

  DriveModeResponse_()
    : error(0)  {
    }
  DriveModeResponse_(const ContainerAllocator& _alloc)
    : error(0)  {
  (void)_alloc;
    }



   typedef int16_t _error_type;
  _error_type error;




  typedef boost::shared_ptr< ::i2cpwm_board::DriveModeResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::i2cpwm_board::DriveModeResponse_<ContainerAllocator> const> ConstPtr;

}; // struct DriveModeResponse_

typedef ::i2cpwm_board::DriveModeResponse_<std::allocator<void> > DriveModeResponse;

typedef boost::shared_ptr< ::i2cpwm_board::DriveModeResponse > DriveModeResponsePtr;
typedef boost::shared_ptr< ::i2cpwm_board::DriveModeResponse const> DriveModeResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::i2cpwm_board::DriveModeResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::i2cpwm_board::DriveModeResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace i2cpwm_board

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'i2cpwm_board': ['/home/tobias/catkin_ws/src/ros-i2cpwmboard/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::i2cpwm_board::DriveModeResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::i2cpwm_board::DriveModeResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::i2cpwm_board::DriveModeResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::i2cpwm_board::DriveModeResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::i2cpwm_board::DriveModeResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::i2cpwm_board::DriveModeResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::i2cpwm_board::DriveModeResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "62df06fbed46eb687891e363579eb0f0";
  }

  static const char* value(const ::i2cpwm_board::DriveModeResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x62df06fbed46eb68ULL;
  static const uint64_t static_value2 = 0x7891e363579eb0f0ULL;
};

template<class ContainerAllocator>
struct DataType< ::i2cpwm_board::DriveModeResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "i2cpwm_board/DriveModeResponse";
  }

  static const char* value(const ::i2cpwm_board::DriveModeResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::i2cpwm_board::DriveModeResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int16 error\n\
\n\
";
  }

  static const char* value(const ::i2cpwm_board::DriveModeResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::i2cpwm_board::DriveModeResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.error);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DriveModeResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::i2cpwm_board::DriveModeResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::i2cpwm_board::DriveModeResponse_<ContainerAllocator>& v)
  {
    s << indent << "error: ";
    Printer<int16_t>::stream(s, indent + "  ", v.error);
  }
};

} // namespace message_operations
} // namespace ros

#endif // I2CPWM_BOARD_MESSAGE_DRIVEMODERESPONSE_H
