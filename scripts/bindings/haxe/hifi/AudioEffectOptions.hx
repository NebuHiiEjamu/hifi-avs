package hifi;

@:require(js, hifi)
typedef AudioEffectOptions = {
  var bandwidth: Float;
  var preDelay: Float;
  var lateDelay: Float;
  var reverbTime: Float;
  var earlyDiffusion: Float;
  var lateDiffusion: Float;
  var roomSize: Float;
  var density: Float;
  var bassMult: Float;
  var bassFreq: Float;
  var highGain: Float;
  var highFreq: Float;
  var modRate: Float;
  var modDepth: Float;
  var earlyGain: Float;
  var lateGain: Float;
  var earlyMixLeft: Float;
  var earlyMixRight: Float;
  var lateMixLeft: Float;
  var lateMixRight: Float;
  var wetDryMix: Float;
}
