// Auto-generated. Do not edit!

// (in-package umnitsa_rpi.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class console_controller {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.B = null;
      this.A = null;
      this.Y = null;
      this.X = null;
      this.L = null;
      this.R = null;
      this.ZL = null;
      this.ZR = null;
      this.MINUS = null;
      this.PLUS = null;
      this.LCLICK = null;
      this.RCLICK = null;
      this.HOME = null;
      this.CAPTURE = null;
      this.UP = null;
      this.RIGHT = null;
      this.LTOGRIGHT = null;
      this.LTOGUP = null;
      this.RTOGRIGHT = null;
      this.RTOGUP = null;
    }
    else {
      if (initObj.hasOwnProperty('B')) {
        this.B = initObj.B
      }
      else {
        this.B = false;
      }
      if (initObj.hasOwnProperty('A')) {
        this.A = initObj.A
      }
      else {
        this.A = false;
      }
      if (initObj.hasOwnProperty('Y')) {
        this.Y = initObj.Y
      }
      else {
        this.Y = false;
      }
      if (initObj.hasOwnProperty('X')) {
        this.X = initObj.X
      }
      else {
        this.X = false;
      }
      if (initObj.hasOwnProperty('L')) {
        this.L = initObj.L
      }
      else {
        this.L = false;
      }
      if (initObj.hasOwnProperty('R')) {
        this.R = initObj.R
      }
      else {
        this.R = false;
      }
      if (initObj.hasOwnProperty('ZL')) {
        this.ZL = initObj.ZL
      }
      else {
        this.ZL = false;
      }
      if (initObj.hasOwnProperty('ZR')) {
        this.ZR = initObj.ZR
      }
      else {
        this.ZR = false;
      }
      if (initObj.hasOwnProperty('MINUS')) {
        this.MINUS = initObj.MINUS
      }
      else {
        this.MINUS = false;
      }
      if (initObj.hasOwnProperty('PLUS')) {
        this.PLUS = initObj.PLUS
      }
      else {
        this.PLUS = false;
      }
      if (initObj.hasOwnProperty('LCLICK')) {
        this.LCLICK = initObj.LCLICK
      }
      else {
        this.LCLICK = false;
      }
      if (initObj.hasOwnProperty('RCLICK')) {
        this.RCLICK = initObj.RCLICK
      }
      else {
        this.RCLICK = false;
      }
      if (initObj.hasOwnProperty('HOME')) {
        this.HOME = initObj.HOME
      }
      else {
        this.HOME = false;
      }
      if (initObj.hasOwnProperty('CAPTURE')) {
        this.CAPTURE = initObj.CAPTURE
      }
      else {
        this.CAPTURE = false;
      }
      if (initObj.hasOwnProperty('UP')) {
        this.UP = initObj.UP
      }
      else {
        this.UP = false;
      }
      if (initObj.hasOwnProperty('RIGHT')) {
        this.RIGHT = initObj.RIGHT
      }
      else {
        this.RIGHT = false;
      }
      if (initObj.hasOwnProperty('LTOGRIGHT')) {
        this.LTOGRIGHT = initObj.LTOGRIGHT
      }
      else {
        this.LTOGRIGHT = 0.0;
      }
      if (initObj.hasOwnProperty('LTOGUP')) {
        this.LTOGUP = initObj.LTOGUP
      }
      else {
        this.LTOGUP = 0.0;
      }
      if (initObj.hasOwnProperty('RTOGRIGHT')) {
        this.RTOGRIGHT = initObj.RTOGRIGHT
      }
      else {
        this.RTOGRIGHT = 0.0;
      }
      if (initObj.hasOwnProperty('RTOGUP')) {
        this.RTOGUP = initObj.RTOGUP
      }
      else {
        this.RTOGUP = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type console_controller
    // Serialize message field [B]
    bufferOffset = _serializer.bool(obj.B, buffer, bufferOffset);
    // Serialize message field [A]
    bufferOffset = _serializer.bool(obj.A, buffer, bufferOffset);
    // Serialize message field [Y]
    bufferOffset = _serializer.bool(obj.Y, buffer, bufferOffset);
    // Serialize message field [X]
    bufferOffset = _serializer.bool(obj.X, buffer, bufferOffset);
    // Serialize message field [L]
    bufferOffset = _serializer.bool(obj.L, buffer, bufferOffset);
    // Serialize message field [R]
    bufferOffset = _serializer.bool(obj.R, buffer, bufferOffset);
    // Serialize message field [ZL]
    bufferOffset = _serializer.bool(obj.ZL, buffer, bufferOffset);
    // Serialize message field [ZR]
    bufferOffset = _serializer.bool(obj.ZR, buffer, bufferOffset);
    // Serialize message field [MINUS]
    bufferOffset = _serializer.bool(obj.MINUS, buffer, bufferOffset);
    // Serialize message field [PLUS]
    bufferOffset = _serializer.bool(obj.PLUS, buffer, bufferOffset);
    // Serialize message field [LCLICK]
    bufferOffset = _serializer.bool(obj.LCLICK, buffer, bufferOffset);
    // Serialize message field [RCLICK]
    bufferOffset = _serializer.bool(obj.RCLICK, buffer, bufferOffset);
    // Serialize message field [HOME]
    bufferOffset = _serializer.bool(obj.HOME, buffer, bufferOffset);
    // Serialize message field [CAPTURE]
    bufferOffset = _serializer.bool(obj.CAPTURE, buffer, bufferOffset);
    // Serialize message field [UP]
    bufferOffset = _serializer.bool(obj.UP, buffer, bufferOffset);
    // Serialize message field [RIGHT]
    bufferOffset = _serializer.bool(obj.RIGHT, buffer, bufferOffset);
    // Serialize message field [LTOGRIGHT]
    bufferOffset = _serializer.float32(obj.LTOGRIGHT, buffer, bufferOffset);
    // Serialize message field [LTOGUP]
    bufferOffset = _serializer.float32(obj.LTOGUP, buffer, bufferOffset);
    // Serialize message field [RTOGRIGHT]
    bufferOffset = _serializer.float32(obj.RTOGRIGHT, buffer, bufferOffset);
    // Serialize message field [RTOGUP]
    bufferOffset = _serializer.float32(obj.RTOGUP, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type console_controller
    let len;
    let data = new console_controller(null);
    // Deserialize message field [B]
    data.B = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [A]
    data.A = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [Y]
    data.Y = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [X]
    data.X = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [L]
    data.L = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [R]
    data.R = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ZL]
    data.ZL = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ZR]
    data.ZR = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [MINUS]
    data.MINUS = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [PLUS]
    data.PLUS = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [LCLICK]
    data.LCLICK = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [RCLICK]
    data.RCLICK = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [HOME]
    data.HOME = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [CAPTURE]
    data.CAPTURE = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [UP]
    data.UP = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [RIGHT]
    data.RIGHT = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [LTOGRIGHT]
    data.LTOGRIGHT = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [LTOGUP]
    data.LTOGUP = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [RTOGRIGHT]
    data.RTOGRIGHT = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [RTOGUP]
    data.RTOGUP = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'umnitsa_rpi/console_controller';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eecd6f451cf88ba32eb3689bc81dee01';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool B
    bool A
    bool Y
    bool X
    bool L
    bool R
    bool ZL
    bool ZR
    bool MINUS
    bool PLUS
    bool LCLICK
    bool RCLICK
    bool HOME
    bool CAPTURE
    bool UP
    bool RIGHT
    float32 LTOGRIGHT
    float32 LTOGUP
    float32 RTOGRIGHT
    float32 RTOGUP
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new console_controller(null);
    if (msg.B !== undefined) {
      resolved.B = msg.B;
    }
    else {
      resolved.B = false
    }

    if (msg.A !== undefined) {
      resolved.A = msg.A;
    }
    else {
      resolved.A = false
    }

    if (msg.Y !== undefined) {
      resolved.Y = msg.Y;
    }
    else {
      resolved.Y = false
    }

    if (msg.X !== undefined) {
      resolved.X = msg.X;
    }
    else {
      resolved.X = false
    }

    if (msg.L !== undefined) {
      resolved.L = msg.L;
    }
    else {
      resolved.L = false
    }

    if (msg.R !== undefined) {
      resolved.R = msg.R;
    }
    else {
      resolved.R = false
    }

    if (msg.ZL !== undefined) {
      resolved.ZL = msg.ZL;
    }
    else {
      resolved.ZL = false
    }

    if (msg.ZR !== undefined) {
      resolved.ZR = msg.ZR;
    }
    else {
      resolved.ZR = false
    }

    if (msg.MINUS !== undefined) {
      resolved.MINUS = msg.MINUS;
    }
    else {
      resolved.MINUS = false
    }

    if (msg.PLUS !== undefined) {
      resolved.PLUS = msg.PLUS;
    }
    else {
      resolved.PLUS = false
    }

    if (msg.LCLICK !== undefined) {
      resolved.LCLICK = msg.LCLICK;
    }
    else {
      resolved.LCLICK = false
    }

    if (msg.RCLICK !== undefined) {
      resolved.RCLICK = msg.RCLICK;
    }
    else {
      resolved.RCLICK = false
    }

    if (msg.HOME !== undefined) {
      resolved.HOME = msg.HOME;
    }
    else {
      resolved.HOME = false
    }

    if (msg.CAPTURE !== undefined) {
      resolved.CAPTURE = msg.CAPTURE;
    }
    else {
      resolved.CAPTURE = false
    }

    if (msg.UP !== undefined) {
      resolved.UP = msg.UP;
    }
    else {
      resolved.UP = false
    }

    if (msg.RIGHT !== undefined) {
      resolved.RIGHT = msg.RIGHT;
    }
    else {
      resolved.RIGHT = false
    }

    if (msg.LTOGRIGHT !== undefined) {
      resolved.LTOGRIGHT = msg.LTOGRIGHT;
    }
    else {
      resolved.LTOGRIGHT = 0.0
    }

    if (msg.LTOGUP !== undefined) {
      resolved.LTOGUP = msg.LTOGUP;
    }
    else {
      resolved.LTOGUP = 0.0
    }

    if (msg.RTOGRIGHT !== undefined) {
      resolved.RTOGRIGHT = msg.RTOGRIGHT;
    }
    else {
      resolved.RTOGRIGHT = 0.0
    }

    if (msg.RTOGUP !== undefined) {
      resolved.RTOGUP = msg.RTOGUP;
    }
    else {
      resolved.RTOGUP = 0.0
    }

    return resolved;
    }
};

module.exports = console_controller;
