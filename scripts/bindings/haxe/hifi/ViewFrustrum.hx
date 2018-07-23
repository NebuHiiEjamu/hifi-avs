package hifi;

@:require(js, hifi)
typedef ViewFrustrum = {
  var position: Vec3;
  var orientation: Quat;
  var centerRadius: Float;
  var fieldOfView: Float;
  var aspectRatio: Float;
  var projection: Mat4;
}
