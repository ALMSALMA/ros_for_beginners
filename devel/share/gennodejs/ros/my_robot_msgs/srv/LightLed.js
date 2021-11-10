// Auto-generated. Do not edit!

// (in-package my_robot_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class LightLedRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.led_number = null;
      this.led_state = null;
    }
    else {
      if (initObj.hasOwnProperty('led_number')) {
        this.led_number = initObj.led_number
      }
      else {
        this.led_number = 0;
      }
      if (initObj.hasOwnProperty('led_state')) {
        this.led_state = initObj.led_state
      }
      else {
        this.led_state = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LightLedRequest
    // Serialize message field [led_number]
    bufferOffset = _serializer.int64(obj.led_number, buffer, bufferOffset);
    // Serialize message field [led_state]
    bufferOffset = _serializer.int64(obj.led_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LightLedRequest
    let len;
    let data = new LightLedRequest(null);
    // Deserialize message field [led_number]
    data.led_number = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [led_state]
    data.led_state = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'my_robot_msgs/LightLedRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '69d6d4f2a9aaf048565b116d58bf8680';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #request
    int64 led_number
    int64 led_state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LightLedRequest(null);
    if (msg.led_number !== undefined) {
      resolved.led_number = msg.led_number;
    }
    else {
      resolved.led_number = 0
    }

    if (msg.led_state !== undefined) {
      resolved.led_state = msg.led_state;
    }
    else {
      resolved.led_state = 0
    }

    return resolved;
    }
};

class LightLedResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LightLedResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LightLedResponse
    let len;
    let data = new LightLedResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'my_robot_msgs/LightLedResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #response
    bool success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LightLedResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: LightLedRequest,
  Response: LightLedResponse,
  md5sum() { return '704e7856efe58150b5b592509c2c6c05'; },
  datatype() { return 'my_robot_msgs/LightLed'; }
};
