package hifi;

@:native("hifi.MappingObject")
extern class MappingObject {
  public function disable(): MappingObject;
  public function enable(active: Bool): MappingObject;

}
