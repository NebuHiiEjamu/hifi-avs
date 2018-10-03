var Particle = function() {
    var self = this;
    this.transform = null;
    this.parentIndex = -1;
    this.damping = 0;
    this.elasticity = 0;
    this.stiffness = 0;
    this.inert = 0;
    this.radius = 0;
    this.boneLength = 0;
    this.position = Vec3.ZERO;
    this.prevPosition = Vec3.ZERO;
    this.endOffset = Vec3.ZERO;
    this.initLocalPosition = Vec3.ZERO;
    this.initLocalRotation = Quat.IDENTITY;
}

var FreezeAxis = {
    NONE: 0,
    X: 1,
    Y: 2,
    Z: 3
}

var Direction = {
    X: 0,
    Y: 1,
    Z: 2
}

var DynamicBone = function() {
    return;
}

var DynamicBoneCollider = function() {
    return;
}

DynamicBoneCollider.prototype = {
    center: Vec3.ZERO;
    radius: 0.5;
    height: 0;
    direction: Direction.X;
    isBoundInside: false;

    onValidate: function() {
        this.radius = Math.max(this.radius, 0);
        this.height = Math.max(this.height, 0);
    }
}

DynamicBone.prototype = {
    root: null;
    updateRate: 60.0;
    damping: 0.1;
    dampingDistrib: null;
    elasticity: 0.1;
    elasticityDistrib: null;
    stiffness: 0.1;
    stiffnessDistrib: null;
    inert: 0;
    inertDistrib: null;
    radius: 0;
    radiusDistrib: null;
    endLength: 0;
    endOffset: Vec3.ZERO;
    gravity: Vec3.ZERO;
    force: Vec3.ZERO;
    colliders: null;
    exclusions: null;
    freezeAxis: FreezeAxis.NONE;
    isDistantDisable: false;
    referenceObject: null;
    distanceToObject: 20;

    localGravity: Vec3.ZERO;
    objectMove: Vec3.ZERO;
    objPrevPosition: Vec3.ZERO;
    boneTotalLength: 0;
    objectScale: 1.0;
    time: 0;
    weight: 1.0;
    isDistantDisabled: false;

    particles: {};
})
