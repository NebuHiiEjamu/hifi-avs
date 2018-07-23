package hifi;

@:require(js, hifi)
typedef Material = {
  var name: String;
  var model: String;
  var emissive: Vec3Color;
  var opacity: Float;
  var unlit: Bool;
  var albedo: Vec3Color;
  var roughness: Float;
  var metallic: Float;
  var scattering: Float;
  var emissiveMap: String;
  var albedoMap: String;
  var opacityMap: String;
  var roughnessMap: String;
  var glossMap: String;
  var metallicMap: String;
  var specularMap: String;
  var normalMap: String;
  var bumpMap: String;
  var occlusionMap: String;
  var scatteringMap: String;
  var lightMap: String;
}
