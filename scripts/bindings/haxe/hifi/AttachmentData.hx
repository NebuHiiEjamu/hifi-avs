package hifi;

@:require(js, hifi)
typedef AttachmentData = {
  var modelUrl: String;
  var jointName: String;
  var translation: Vec3;
  var rotation: Vec3;
  var scale: Float;
  var soft: Bool;
}
