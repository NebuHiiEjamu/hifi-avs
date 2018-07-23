type
  AACube* = ref object
    x*: float
    y*: float
    z*: float
    scale*: float

  Vec3* = ref object
    x*: float
    y*: float
    z*: float

  AttachmentData* = ref object
    modelUrl*: cstring
    jointName*: cstring
    translation*: Vec3
    rotation*: Vec3
    scale*: float
    soft*: bool

  Uuid* = ref object

  BoxFace*{.pure.} = enum
    MIN_X_FACE = "MIN_X_FACE"
    MAX_X_FACE = "MAX_X_FACE"
    MIN_Y_FACE = "MIN_Y_FACE"
    MAX_Y_FACE = "MAX_Y_FACE"
    MIN_Z_FACE = "MIN_Z_FACE"
    MAX_Z_FACE = "MAX_Z_FACE"
    UNKNOWN_FACE = "UNKNOWN_FACE"

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
    x*: float
    y*: float
    z*: float
    w*: float

  Vec4* = distinct Quat

  ContactEventType* = enum
    Start = 0
    Continuation = 1
    End = 2

  FBXAnimationFrame* = ref object
    rotations*: seq[Quat]
    translations*: seq[Vec3]

  KeyboardModifier*{.pure.} = enum
    Shift = 25
    Control = 26
    Alt = 27
    Meta = 28
    Keypad = 29
    Group = 30

  KeyboardModifiers* = set of KeyboardModifier

  KeyEvent* = ref object
    key*: int
    text*: cstring
    isShifted*: bool
    isMeta*: bool
    isControl*: bool
    isAlt*: bool
    isKeypad*: bool
    isAutoRepeat*: bool

  Vec3Color* = ref object
    x*: int
    y*: int
    z*: int

  Material* = ref object
    name*: cstring
    model*: cstring
    emissive*: Vec3Color
    opacity*: float
    unlit*: bool
    albedo*: Vec3Color
    roughness*: float
    metallic*: float
    scattering*: float
    emissiveMap*: cstring
    albedoMap*: cstring
    opacityMap*: cstring
    roughnessMap*: cstring
    glossMap*: cstring
    metallicMap*: cstring
    specularMap*: cstring
    normalMap* cstring
    bumpMap*: cstring
    occlusionMap*: cstring
    scatteringMap*: cstring
    lightMap*: cstring

  MaterialResource* = ref object
    materialVersion*: int
    materials*: Material | seq[Material]

  MouseEvent* = ref object
    x*: int
    y*: int
    button*: cstring
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

  PickType* = enum
    Ray, Stylus

  Vec2* = ref object
    x*: float
    y*: float

  PointerEvent* = ref object
    kind*: cstring
    id*: int
    pos2D*: Vec2
    pos3D*: Vec3
    normal*: Vec3
    direction*: Vec3
    button*: cstring
    isPrimaryButton*: bool
    isLeftButton*: bool
    isSecondaryButton*: bool
    isRightButton*: bool
    isTertiaryButton*: bool
    isMiddleButton*: bool
    isPrimaryHeld*: bool
    isSecondaryHeld*: bool
    isTertiaryHeld*: bool
    keyboardModifiers*: KeyboardModifiers

  Pose* = ref object
    translation*: Vec3
    rotation*: Quat
    velocity*: Vec3
    angularVelocity*: Vec3
    valid*: bool

  RayPickResult* = ref object
    kind*: int
    intersects*: bool
    objectID*: Uuid
    distance*: float
    intersection*: Vec3
    surfaceNormal*: Vec3
    extraInfo*: JsObject
    searchRay*: PickRay

  Rect* = ref object
    x*: int
    y*: int
    width*: int
    height*: int

  Size* = ref object
    height*: float
    width*: float

  StylusTip* = ref object
    side*: int
    position*: Vec3
    orientation*: Quat
    velocity*: Vec3

  StylusPickResult* = ref object
    kind*: int
    intersects*: bool
    objectID*: Uuid
    distance*: float
    intersection*: Vec3
    surfaceNormal*: Vec3
    extraInfo*: JsObject
    stylusTip*: StylusTip

  TouchEvent* = ref object
    x*: float
    y*: float
    isPressed*: bool
    isMoved*: bool
    isStationary*: bool
    isReleased*: bool
    isShifted*: bool
    isMeta*: bool
    isControl*: bool
    isAlt*: bool
    touchPoints*: int
    points*: seq[Vec2]
    radius*: float
    isPinching*: bool
    isPinchOpening*: bool
    angle*: float
    deltaAngle*: float
    angles*: seq[float]
    isRotating*: bool
    rotating*: cstring

  Mat4* = ref object

  ViewFrustrum* = ref object
    position*: Vec3
    orientation*: Quat
    centerRadius*: float
    fieldOfView*: float
    aspectRatio*: float
    projection*: Mat4

  WheelEvent* = ref object
    x*: float
    y*: float
    delta*: float
    orientation*: cstring
    isLeftButton*: bool
    isMiddleButton*: bool
    isRightButton*: bool
    isShifted*: bool
    isMeta*: bool
    isControl*: bool
    isAlt*: bool

  AnimationObject* = ref object
    jointNames*: seq[cstring]
    frames*: seq[FBXAnimationFrame]

  AudioEffectOptions* = ref object
    bandwidth*: float
    preDelay*: float
    lateDelay*: float
    reverbTime*: float
    earlyDiffusion*: float
    lateDiffusion*: float
    roomSize*: float
    density*: float
    bassMult*: float
    bassFreq*: float
    highGain*: float
    highFreq*: float
    modRate*: float
    modDepth*: float
    earlyGain*: float
    lateGain*: float
    earlyMixLeft*: float
    earlyMixRight*: float
    lateMixLeft*: float
    lateMixRight*: float
    wetDryMix*: float

  ReverbOptions* = AudioEffectOptions

  AudioStreamStats* = ref object
    lossRate*: float
    lossCount*: int
    lossRateWindow*: float

  MappingObject* = ref object

  MeshProxy* = ref object

  OverlayWebWindow* = ref object
    url: cstring
    position*: Vec2
    size*: Vec2
    visible*: bool

  Properties* = ref object
    title*: cstring
    source*: cstring
    width*: float
    height*: float
    visible*: bool

  OverlayWindow* = ref object
    position*: Vec2
    size*: Vec2
    visible*: bool

  State* = enum
    QUEUED
    LOADING
    LOADED
    FINISHED
    FAILED

  ResourceObject* = ref object
    url*: cstring
    state*: State

  RouteObject* = ref object

  KeyLight* = ref object
    color*: Vec3
    intensity*: float
    ambientIntensity*: float
    direction*: Vec3

  Location* = ref object
    longitude*: float
    latitude*: float
    altitude*: float

  Stage* = ref object
    backgroundMode* = cstring
    keyLight*: KeyLight
    location*: Location
    sunModel*: bool
    time*: Time

  ScriptsModel* = ref object

  ScriptsModelFilter* = ref object

  SoundObject* = ref object
    downloaded*: bool
    duration*: float

  ButtonProperties* = ref object
    icon*: cstring
    hoverIcon*: cstring
    activeHoverIcon*: cstring
    activeIcon*: cstring
    text*: cstring
    hoverText*: cstring
    activeText*: cstring
    activeHoverText*: cstring
    isActive*: bool
    sortOrder*: int

  TabletButtonProxy* = ref object
    uuid: Uuid
    properties*: ButtonProperties

  ButtonList* = ref object

  TabletProxy* = ref object
    name: cstring
    toolbarMode*: bool
    landscape*: bool
    tabletShown: bool
    buttons: ButtonList

  ToolbarButtonProxy* = ref object

  ToolbarProxy* = ref object

proc `buttons`*(self: TabletProxy): ButtonList =
  return self.buttons

proc `name`*(self: TabletProxy): cstring =
  return self.name

proc `tabletShown`*(self: TabletProxy): bool =
  return self.tabletShown

proc `url`*(self: OverlayWebWindow): cstring =
  return self.url

proc `uuid`*(self: TabletButtonProxy): Uuid =
  return self.uuid

proc disable*(self: MappingObject): MappingObject
  {.importcpp: "disable".}

proc enable*(self: MappingObject, doEnable: bool = true): MappingObject
  {.importcpp: "enable".}

proc getFrames*(self: AnimationObject): seq[FBXAnimationFrame]
  {.importcpp: "getFrames".}

proc getJointNames*(self: AnimationObject): seq[cstring]
  {.importcpp: "getJointNames".}

proc getNumVertices*(self: MeshProxy): int
  {.importcpp: "getNumVertices".}

proc getPos*(self: MeshProxy, index: int): Vec3
  {.importcpp: "getPos".}

proc getPosition*(self: OverlayWebWindow): Vec2
  {.importcpp: "getPosition".}

proc getSize*(self: OverlayWebWindow): Vec2
  {.importcpp: "getSize".}

proc getURL*(self: OverlayWebWindow): cstring
  {.importcpp: "getURL".}

proc initQml*(self: var OverlayWebWindow, properties: Properties)
  {.importcpp: "initQml".}

proc isVisible*(self: OverlayWebWindow): bool
  {.importcpp: "isVisible".}

proc setPosition*(self: var OverlayWebWindow, position: Vec2)
  {.importcpp: "setPosition".}

proc setPosition*(self: var OverlayWebWindow, x: int, y, int)
  {.importcpp: "setPosition".}

proc setScriptURL*(self: var OverlayWebWindow, script: cstring)
  {.importcpp: "setScriptURL".}

proc setSize*(self: var OverlayWebWindow, size: Vec2)
  {.importcpp: "setSize".}
