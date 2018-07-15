when not defined(js) and not defined(Nimdoc):
  {.error: "This module only works on the JavaScript platform".}

const
  KEY_SHIFT* = 33554432
  KEY_CONTROL* = 67108864
  KEY_ALT* = 134217728
  KEY_META* = 268435456
  KEY_KEYPAD* = 536870912
  KEY_GROUP* = 1073741824

type
  AACube* = ref object
    x*: float64
    y*: float64
    z*: float64
    scale*: float64

  Vec3* = ref object
    x*: float64
    y*: float64
    z*: float64

  AttachmentData* = ref object
    modelUrl*: string
    jointName*: string
    translation*: Vec3
    rotation*: Vec3
    scale*: float64
    soft*: bool

  Uuid* = ref object

  Collision* = ref object
    idA*: Uuid
    idB*: Uuid
    penetration*: Vec3
    contactPoint*: Vec3
    velocityChange*: Vec3

  Color* = ref object
    red*: uint8
    green*: uint8
    blue*: uint8

  Quat* = ref object
    x*: float64
    y*: float64
    z*: float64
    w*: float64

  Vec4* = distinct Quat

  FBXAnimationFrame* = ref object
    rotations*: seq[Quat]
    translations*: seq[Vec3]

  KeyEvent* = ref object
    key*: uint32
    text*: string
    isShifted*: bool
    isMeta*: bool
    isControl*: bool
    isAlt*: bool
    isKeypad*: bool
    isAutoRepeat*: bool

  Vec3Color* = ref object
    x*: uint8
    y*: uint8
    z*: uint8

  Material* = ref object
    name*: string
    model*: string
    emissive*: Vec3Color
    opacity*: float64
    unlit*: bool
    albedo*: Vec3Color
    roughness*: float64
    metallic*: float64
    scattering*: float64
    emissiveMap*: string
    albedoMap*: string
    opacityMap*: string
    roughnessMap*: string
    glossMap*: string
    metallicMap*: string
    specularMap*: string
    normalMap* string
    bumpMap*: string
    occlusionMap*: string
    scatteringMap*: string
    lightMap*: string

  MaterialResource* = ref object
    materialVersion*: uint32
    materials*: Material | seq[Material]

  MouseEvent* = ref object
    x*: float64
    y*: float64
    button*: string
    isLeftButton*: bool
    isMiddleButton*: bool
    isRightButton*: bool
    isShifted*: bool
    isMeta*: bool
    isControl*: bool
    isAlt*: bool

  PickRay* = ref object
    origin*: Vec3
    direction*: Vec3

  PickType*{.pure.} = enum
    Ray, Stylus

  Vec2* = ref object
    x*: float64
    y*: float64

  PointerEvent* = ref object
    kind*: string
    id*: uint8
    pos2D*: Vec2
    pos3D*: Vec3
    normal*: Vec3
    direction*: Vec3
    button*: string
    isPrimaryButton*: bool
    isLeftButton*: bool
    isSecondaryButton*: bool
    isRightButton*: bool
    isTertiaryButton*: bool
    isMiddleButton*: bool
    isPrimaryHeld*: bool
    isSecondaryHeld*: bool
    isTertiaryHeld*: bool
    keyboardModifiers*: uint32

  Pose* = ref object
    translation*: Vec3
    rotation*: Quat
    velocity*: Vec3
    angularVelocity*: Vec3
    valid*: bool

  RayPickResult* = ref object
    kind*: float64
    intersects*: bool
    objectID*: Uuid
    distance*: float64
    intersection*: Vec3
    surfaceNormal*: Vec3
    extraInfo*: any
    searchRay*: PickRay

  Rect* = ref object
    x*: float64
    y*: float64
    width*: float64
    height*: float64

  Size* = ref object
    height*: float64
    width*: float64

  StylusTip* = ref object
    side*: uint8
    position*: Vec3
    orientation*: Quat
    velocity*: Vec3

  StylusPickResult* = ref object
    kind*: uint32
    intersects*: bool
    objectID*: Uuid
    distance*: float64
    intersection*: Vec3
    surfaceNormal*: Vec3
    extraInfo*: any
    stylusTip*: StylusTip

  TouchEvent* = ref object
    x*: float64
    y*: float64
    isPressed*: bool
    isMoved*: bool
    isStationary*: bool
    isReleased*: bool
    isShifted*: bool
    isMeta*: bool
    isControl*: bool
    isAlt*: bool
    touchPoints*: uint32
    points*: seq[Vec2]
    radius*: float64
    isPinching*: bool
    isPinchOpening*: bool
    angle*: float64
    deltaAngle*: float64
    angles*: seq[float64]
    isRotating*: bool
    rotating*: string

  Mat4* = ref object

  ViewFrustrum* = ref object
    position*: Vec3
    orientation*: Quat
    centerRadius*: float64
    fieldOfView*: float64
    aspectRatio*: float64
    projection*: Mat4

  WheelEvent* = ref object
    x*: float64
    y*: float64
    delta*: float64
    orientation*: string
    isLeftButton*: bool
    isMiddleButton*: bool
    isRightButton*: bool
    isShifted*: bool
    isMeta*: bool
    isControl*: bool
    isAlt*: bool

  AnimationObject* = ref object
    jointNames*: seq[string]
    frames*: seq[FBXAnimationFrame]

  AudioEffectOptions* = ref object
    bandwidth*: float64
    preDelay*: float64
    lateDelay*: float64
    reverbTime*: float64
    earlyDiffusion*: float64
    lateDiffusion*: float64
    roomSize*: float64
    density*: float64
    bassMult*: float64
    bassFreq*: float64
    highGain*: float64
    highFreq*: float64
    modRate*: float64
    modDepth*: float64
    earlyGain*: float64
    lateGain*: float64
    earlyMixLeft*: float64
    earlyMixRight*: float64
    lateMixLeft*: float64
    lateMixRight*: float64
    wetDryMix*: float64

  ReverbOptions* = AudioEffectOptions

  AudioStreamStats* = ref object
    lossRate*: float64
    lossCount*: uint64
    lossRateWindow*: float64
