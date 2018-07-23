package hifi;

@:require(js, hifi)
typedef MouseEvent = {
  var x: Int;
  var y: Int;
  var button: String;
  var isLeftButton: Bool;
  var isMiddleButton: Bool;
  var isRightButton: Bool;
  var isShifted: Bool;
  var isMeta: Bool;
  var isControl: Bool;
  var isAlt: Bool;
}
