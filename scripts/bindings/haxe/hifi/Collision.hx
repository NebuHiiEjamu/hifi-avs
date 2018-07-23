package hifi;

@:require(js, hifi)
typedef Collision = {
  var type: Int;
  var idA: Uuid;
  var idB: Uuid;
  var penetration: Vec3;
  var contactPoint: Vec3;
  var velocityChange: Vec3;
}
