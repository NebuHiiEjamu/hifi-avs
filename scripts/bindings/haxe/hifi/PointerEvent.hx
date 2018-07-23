package hifi;

@:require(js, hifi)
typedef PointerEvent = {
  var type: String;
  var id: Int;
  var pos2D: Vec2;
  var pos3D: Vec3;
  var normal: Vec3;
  var direction: Vec3;
  var button: String;
  var isPrimaryButton: Bool;
  var isLeftButton: Bool;
  var isSecondaryButton: Bool;
  var isRightButton: Bool;
  var isTertiaryButton: Bool;
  var isMiddleButton: Bool;
  var isPrimaryHeld: Bool;
  var isSecondaryHeld: Bool;
  var isTertiaryHeld: Bool;
  var keyboardModifiers: Int;
}
