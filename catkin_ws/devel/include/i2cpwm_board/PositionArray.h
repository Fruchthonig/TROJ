// Generated by gencpp from file i2cpwm_board/PositionArray.msg
// DO NOT EDIT!


#ifndef I2CPWM_BOARD_MESSAGE_POSITIONARRAY_H
#define I2CPWM_BOARD_MESSAGE_POSITIONARRAY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <i2cpwm_board/Position.h>

namespace i2cpwm_board
{
template <class ContainerAllocator>
struct PositionArray_
{
  typedef PositionArray_<ContainerAllocator> Type;

  PositionArray_()
    : servos()  {
    }
  PositionArray_(const ContainerAllocator& _alloc)
    : servos(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::i2cpwm_board::Position_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::i2cpwm_board::Position_<ContainerAllocator> >::other >  _servos_type;
  _servos_type servos;




  typedef boost::shared_ptr< ::i2cpwm_board::PositionArray_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::i2cpwm_board::PositionArray_<ContainerAllocator> const> ConstPtr;

}; // struct PositionArray_

typedef ::i2cpwm_board::PositionArray_<std::allocator<void> > PositionArray;

typedef boost::shared_ptr< ::i2cpwm_board::PositionArray > PositionArrayPtr;
typedef boost::shared_ptr< ::i2cpwm_board::PositionArray const> PositionArrayConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::i2cpwm_board::PositionArray_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::i2cpwm_board::PositionArray_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace i2cpwm_board

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'i2cpwm_board': ['/home/tobias/catkin_ws/src/ros-i2cpwmboard/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::i2cpwm_board::PositionArray_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::i2cpwm_board::PositionArray_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::i2cpwm_board::PositionArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::i2cpwm_board::PositionArray_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::i2cpwm_board::PositionArray_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::i2cpwm_board::PositionArray_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::i2cpwm_board::PositionArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "06b5be802f78af7b5ec929fe386952bb";
  }

  static const char* value(const ::i2cpwm_board::PositionArray_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x06b5be802f78af7bULL;
  static const uint64_t static_value2 = 0x5ec929fe386952bbULL;
};

template<class ContainerAllocator>
struct DataType< ::i2cpwm_board::PositionArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "i2cpwm_board/PositionArray";
  }

  static const char* value(const ::i2cpwm_board::PositionArray_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::i2cpwm_board::PositionArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# the PositionArray message handles multiple position assignments\n\
# of servos.\n\
\n\
Position[] servos\n\
\n\
================================================================================\n\
MSG: i2cpwm_board/Position\n\
# the position message is used when configuring drive mode to\n\
# assign a  servo to a specific wheel positon in the drive system\n\
# postions are specific toe the desired drive mode\n\
# ackerman has only one position\n\
# 1 = drive\n\
# differential has two positons\n\
# 1 = left, 2 = right\n\
# mecanum has four positions\n\
# 1 = front left, 2 = front right, 3 = rear left, 4 = rear right\n\
# multiple servos/motors may be used for each positon\n\
\n\
int16 servo\n\
int16 position\n\
";
  }

  static const char* value(const ::i2cpwm_board::PositionArray_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::i2cpwm_board::PositionArray_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.servos);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PositionArray_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::i2cpwm_board::PositionArray_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::i2cpwm_board::PositionArray_<ContainerAllocator>& v)
  {
    s << indent << "servos[]" << std::endl;
    for (size_t i = 0; i < v.servos.size(); ++i)
    {
      s << indent << "  servos[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::i2cpwm_board::Position_<ContainerAllocator> >::stream(s, indent + "    ", v.servos[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // I2CPWM_BOARD_MESSAGE_POSITIONARRAY_H
