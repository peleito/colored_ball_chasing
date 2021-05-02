// Generated by gencpp from file rtabmap_ros/AddLinkRequest.msg
// DO NOT EDIT!


#ifndef RTABMAP_ROS_MESSAGE_ADDLINKREQUEST_H
#define RTABMAP_ROS_MESSAGE_ADDLINKREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <rtabmap_ros/Link.h>

namespace rtabmap_ros
{
template <class ContainerAllocator>
struct AddLinkRequest_
{
  typedef AddLinkRequest_<ContainerAllocator> Type;

  AddLinkRequest_()
    : link()  {
    }
  AddLinkRequest_(const ContainerAllocator& _alloc)
    : link(_alloc)  {
  (void)_alloc;
    }



   typedef  ::rtabmap_ros::Link_<ContainerAllocator>  _link_type;
  _link_type link;





  typedef boost::shared_ptr< ::rtabmap_ros::AddLinkRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rtabmap_ros::AddLinkRequest_<ContainerAllocator> const> ConstPtr;

}; // struct AddLinkRequest_

typedef ::rtabmap_ros::AddLinkRequest_<std::allocator<void> > AddLinkRequest;

typedef boost::shared_ptr< ::rtabmap_ros::AddLinkRequest > AddLinkRequestPtr;
typedef boost::shared_ptr< ::rtabmap_ros::AddLinkRequest const> AddLinkRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rtabmap_ros::AddLinkRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rtabmap_ros::AddLinkRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace rtabmap_ros

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'rtabmap_ros': ['/home/team1/autonomy_ws/src/rtabmap_ros/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::rtabmap_ros::AddLinkRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rtabmap_ros::AddLinkRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rtabmap_ros::AddLinkRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rtabmap_ros::AddLinkRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rtabmap_ros::AddLinkRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rtabmap_ros::AddLinkRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rtabmap_ros::AddLinkRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "050728e3c25a15bf78d487d6aafab152";
  }

  static const char* value(const ::rtabmap_ros::AddLinkRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x050728e3c25a15bfULL;
  static const uint64_t static_value2 = 0x78d487d6aafab152ULL;
};

template<class ContainerAllocator>
struct DataType< ::rtabmap_ros::AddLinkRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rtabmap_ros/AddLinkRequest";
  }

  static const char* value(const ::rtabmap_ros::AddLinkRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rtabmap_ros::AddLinkRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
Link link\n\
\n\
================================================================================\n\
MSG: rtabmap_ros/Link\n\
#class rtabmap::Link\n\
#{\n\
#   int from;\n\
#   int to;\n\
#   Type type;\n\
#   Transform transform;\n\
#   cv::Mat(6,6,CV_64FC1) information;\n\
#}\n\
\n\
int32 fromId\n\
int32 toId\n\
int32 type\n\
geometry_msgs/Transform transform\n\
float64[36] information\n\
================================================================================\n\
MSG: geometry_msgs/Transform\n\
# This represents the transform between two coordinate frames in free space.\n\
\n\
Vector3 translation\n\
Quaternion rotation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Vector3\n\
# This represents a vector in free space. \n\
# It is only meant to represent a direction. Therefore, it does not\n\
# make sense to apply a translation to it (e.g., when applying a \n\
# generic rigid transformation to a Vector3, tf2 will only apply the\n\
# rotation). If you want your data to be translatable too, use the\n\
# geometry_msgs/Point message instead.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
";
  }

  static const char* value(const ::rtabmap_ros::AddLinkRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rtabmap_ros::AddLinkRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.link);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AddLinkRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rtabmap_ros::AddLinkRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rtabmap_ros::AddLinkRequest_<ContainerAllocator>& v)
  {
    s << indent << "link: ";
    s << std::endl;
    Printer< ::rtabmap_ros::Link_<ContainerAllocator> >::stream(s, indent + "  ", v.link);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RTABMAP_ROS_MESSAGE_ADDLINKREQUEST_H
