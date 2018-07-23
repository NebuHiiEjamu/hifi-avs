package hifi;

@:require(js, hifi)
typedef KeyEvent = {
  var key: Int;
  var text: String;
  var isShifted: Bool;
  var isMeta: Bool;
  var isControl: Bool;
  var isAlt: Bool;
  var isKeypad: Bool;
  var isAutoRepeat: Bool;
}
