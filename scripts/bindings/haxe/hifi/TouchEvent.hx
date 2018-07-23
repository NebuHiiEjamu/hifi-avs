package hifi;

@:require(js, hifi)
typedef TouchEvent = {
  var x: Int;
  var y: Int;
  var isPressed: Bool;
  var isMoved: Bool;
  var isStationary: Bool;
  var isReleased: Bool;
  var isShifted: Bool;
  var isMeta: Bool;
  var isControl: Bool;
  var isAlt: Bool;
  var touchPoints: Int;
  var points: Array<Vec2>;
  var radius: Float;
  var isPinching: Bool;
  var isPinchOpening: Bool;
  var angle: Float;
  var deltaAngle: Float;
  var angles: Array<Float>;
  var isRotating: Bool;
  var rotating: String;
}
