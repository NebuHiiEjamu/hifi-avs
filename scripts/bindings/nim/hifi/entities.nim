import "../hifi"

type
  ActionType* = enum
    farGrab = "far-grab"
    hold = "hold"
    offset = "offset"
    tractor = "tractor"
    travelOriented = "travel-oriented"
    hinge = "hinge"
    slider = "slider"
    coneTwist = "cone-twist"
    ballSocket = "ball-socket"
    spring = "spring"

  PhysicsMotionType* = enum
    static = "static"
    kinematic = "kinematic"
    dynamic = "dynamic"

  ActionArguments* = ref object
    kind*{.importcpp: "type".}: ActionType
    tag*{.importcpp: "tag".}: cstring
    ttl*{.importcpp: "ttl".}: float
    isMine*{.importcpp: "isMine".}: bool
    noMotionState*{.importcpp: "::no-motion-state".}: bool
    active*{.importcpp: "::active".}: bool
    motionType*{.importcpp: "::motion-type".}: PhysicsMotionType

    case kind
    of farGrab

proc aaBoxIntersectsCapsule*(brn: Vec3, dimensions: Vec3, start: Vec3, end: Vec3,
  radius: float): bool {.importcpp: "Entities.AABoxIntersectsCapsule".}

proc addAction*(actionType: ActionType, entityID: Uuid
