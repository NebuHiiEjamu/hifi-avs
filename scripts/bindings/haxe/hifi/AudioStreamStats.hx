package hifi;

@:native("hifi.AudioStreamStats")
extern class AudioStreamStats {
  public var lossRate(get, never): Float;
  public var lossCount(get, never): Int;
  public var lossRateWindow(get, never): Float;
  public var lossCountWindow(get, never): Int;
  public var framesDesired(get, never): Int;
  public var framesAvailable(get, never): Int;
  public var unplayedMsMax(get, never): Float;
  public var starveCount(get, never): Int;
  public var lastStarveDurationCount(get, never): Int;
  public var dropCount(get, never): Int;
  public var overflowCount(get, never): Int;
  public var timegapMsMax(get, never): Float;
  public var timegapMsAvg(get, never): Float;
  public var timegapMsMaxWindow(get, never): Float;
  public var timegapMsAvgWindow(get, never): Float;
}
