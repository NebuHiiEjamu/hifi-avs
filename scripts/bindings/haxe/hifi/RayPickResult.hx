package hifi;

@:require(js, hifi)
typedef RayPickResult = {
  var type: Int;
  var intersects: Bool;
  var objectID: Uuid;
  var distance: Float;
  var intersection: Vec3;
  var surfaceNormal: Vec3;
  var extraInfo: Dynamic;
  var searchRay: PickRay;
}
