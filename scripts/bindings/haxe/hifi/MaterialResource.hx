package hifi;

import haxe.extern.EitherType;

@:require(js, hifi)
typedef MaterialResource = {
  var materialVersion: Int;
  var materials: EitherType<Material, Array<Material>>;
}
