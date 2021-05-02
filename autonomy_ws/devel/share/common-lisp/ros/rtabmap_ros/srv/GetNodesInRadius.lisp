; Auto-generated. Do not edit!


(cl:in-package rtabmap_ros-srv)


;//! \htmlinclude GetNodesInRadius-request.msg.html

(cl:defclass <GetNodesInRadius-request> (roslisp-msg-protocol:ros-message)
  ((node_id
    :reader node_id
    :initarg :node_id
    :type cl:integer
    :initform 0)
   (x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0)
   (radius
    :reader radius
    :initarg :radius
    :type cl:float
    :initform 0.0))
)

(cl:defclass GetNodesInRadius-request (<GetNodesInRadius-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetNodesInRadius-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetNodesInRadius-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rtabmap_ros-srv:<GetNodesInRadius-request> is deprecated: use rtabmap_ros-srv:GetNodesInRadius-request instead.")))

(cl:ensure-generic-function 'node_id-val :lambda-list '(m))
(cl:defmethod node_id-val ((m <GetNodesInRadius-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_ros-srv:node_id-val is deprecated.  Use rtabmap_ros-srv:node_id instead.")
  (node_id m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <GetNodesInRadius-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_ros-srv:x-val is deprecated.  Use rtabmap_ros-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <GetNodesInRadius-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_ros-srv:y-val is deprecated.  Use rtabmap_ros-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <GetNodesInRadius-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_ros-srv:z-val is deprecated.  Use rtabmap_ros-srv:z instead.")
  (z m))

(cl:ensure-generic-function 'radius-val :lambda-list '(m))
(cl:defmethod radius-val ((m <GetNodesInRadius-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_ros-srv:radius-val is deprecated.  Use rtabmap_ros-srv:radius instead.")
  (radius m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetNodesInRadius-request>) ostream)
  "Serializes a message object of type '<GetNodesInRadius-request>"
  (cl:let* ((signed (cl:slot-value msg 'node_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'radius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetNodesInRadius-request>) istream)
  "Deserializes a message object of type '<GetNodesInRadius-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'node_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'radius) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetNodesInRadius-request>)))
  "Returns string type for a service object of type '<GetNodesInRadius-request>"
  "rtabmap_ros/GetNodesInRadiusRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetNodesInRadius-request)))
  "Returns string type for a service object of type 'GetNodesInRadius-request"
  "rtabmap_ros/GetNodesInRadiusRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetNodesInRadius-request>)))
  "Returns md5sum for a message object of type '<GetNodesInRadius-request>"
  "d9919b4d20cd8ddf742167d34c6d6eca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetNodesInRadius-request)))
  "Returns md5sum for a message object of type 'GetNodesInRadius-request"
  "d9919b4d20cd8ddf742167d34c6d6eca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetNodesInRadius-request>)))
  "Returns full string definition for message of type '<GetNodesInRadius-request>"
  (cl:format cl:nil "~%~%~%~%~%~%~%int32 node_id~%~%~%float32 x~%float32 y~%float32 z~%~%~%float32 radius~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetNodesInRadius-request)))
  "Returns full string definition for message of type 'GetNodesInRadius-request"
  (cl:format cl:nil "~%~%~%~%~%~%~%int32 node_id~%~%~%float32 x~%float32 y~%float32 z~%~%~%float32 radius~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetNodesInRadius-request>))
  (cl:+ 0
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetNodesInRadius-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetNodesInRadius-request
    (cl:cons ':node_id (node_id msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':radius (radius msg))
))
;//! \htmlinclude GetNodesInRadius-response.msg.html

(cl:defclass <GetNodesInRadius-response> (roslisp-msg-protocol:ros-message)
  ((ids
    :reader ids
    :initarg :ids
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (poses
    :reader poses
    :initarg :poses
    :type (cl:vector geometry_msgs-msg:Pose)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose :initial-element (cl:make-instance 'geometry_msgs-msg:Pose))))
)

(cl:defclass GetNodesInRadius-response (<GetNodesInRadius-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetNodesInRadius-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetNodesInRadius-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rtabmap_ros-srv:<GetNodesInRadius-response> is deprecated: use rtabmap_ros-srv:GetNodesInRadius-response instead.")))

(cl:ensure-generic-function 'ids-val :lambda-list '(m))
(cl:defmethod ids-val ((m <GetNodesInRadius-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_ros-srv:ids-val is deprecated.  Use rtabmap_ros-srv:ids instead.")
  (ids m))

(cl:ensure-generic-function 'poses-val :lambda-list '(m))
(cl:defmethod poses-val ((m <GetNodesInRadius-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_ros-srv:poses-val is deprecated.  Use rtabmap_ros-srv:poses instead.")
  (poses m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetNodesInRadius-response>) ostream)
  "Serializes a message object of type '<GetNodesInRadius-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'ids))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'poses))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'poses))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetNodesInRadius-response>) istream)
  "Deserializes a message object of type '<GetNodesInRadius-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'poses) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'poses)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetNodesInRadius-response>)))
  "Returns string type for a service object of type '<GetNodesInRadius-response>"
  "rtabmap_ros/GetNodesInRadiusResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetNodesInRadius-response)))
  "Returns string type for a service object of type 'GetNodesInRadius-response"
  "rtabmap_ros/GetNodesInRadiusResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetNodesInRadius-response>)))
  "Returns md5sum for a message object of type '<GetNodesInRadius-response>"
  "d9919b4d20cd8ddf742167d34c6d6eca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetNodesInRadius-response)))
  "Returns md5sum for a message object of type 'GetNodesInRadius-response"
  "d9919b4d20cd8ddf742167d34c6d6eca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetNodesInRadius-response>)))
  "Returns full string definition for message of type '<GetNodesInRadius-response>"
  (cl:format cl:nil "~%int32[] ids~%geometry_msgs/Pose[] poses~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetNodesInRadius-response)))
  "Returns full string definition for message of type 'GetNodesInRadius-response"
  (cl:format cl:nil "~%int32[] ids~%geometry_msgs/Pose[] poses~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetNodesInRadius-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'poses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetNodesInRadius-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetNodesInRadius-response
    (cl:cons ':ids (ids msg))
    (cl:cons ':poses (poses msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetNodesInRadius)))
  'GetNodesInRadius-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetNodesInRadius)))
  'GetNodesInRadius-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetNodesInRadius)))
  "Returns string type for a service object of type '<GetNodesInRadius>"
  "rtabmap_ros/GetNodesInRadius")