package hifi;

@:require(js, hifi)
typedef WheelEvent = {
  var x: Int;
  var y: Int;
  var delta: Int;
  var orientation: String;
  var isLeftButton: Bool;
  var isMiddleButton: Bool;
  var isRightButton: Bool;
  var isShifted: Bool;
  var isMeta: Bool;
  var isControl: Bool;
  var isAlt: Bool;
}
