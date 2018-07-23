package hifi;

@:require(js, hifi)
typedef Pose = {
  var translation: Vec3;
  var rotation: Quat;
  var velocity: Vec3;
  var angularVelocity: Vec3;
  var valid: Bool;
}
