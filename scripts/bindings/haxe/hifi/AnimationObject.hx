package hifi;

@:native("hifi.AnimationObject")
extern class AnimationObject {
  public var jointNames: Array<String>;
  public var frames: Array<FBXAnimationFrame>;

  public function getFrames(): Array<FBXAnimationFrame>;
  public function getJointNames(): Array<String>;
}
