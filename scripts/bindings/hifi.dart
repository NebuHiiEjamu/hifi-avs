class AACube {
	num x;
	num y;
	num z;
	num scale;
}

class Vec3 {
	num x;
	num y;
	num z;
}

class AttachmentData {
	String modelUrl;
	String jointName;
	Vec3 translation;
	Vec3 rotation;
	num scale;
	bool soft;
}

class Collision {
	num type;
	Vec3 penetration;
	Vec3 contactPoint;
	Vec3 velocityChange;
}

class Color {
	int red;
	int green;
	int blue;
}

class Quat {
	num x;
	num y;
	num z;
	num w;
}

class FBXAnimationFrame {
	List<Quat> rotations;
	List<Vec3> translations;
}

class KeyEvent {
	int key;
	String text;
	bool isShifted;
	bool isMeta;
	bool isControl;
	bool isAlt;
	bool isKeypad;
	bool isAutoRepeat;
}

class Vec3Color {
	int x;
	int y;
	int z;
}

class Material {
	String name = "";
	String model = "hifi_pbr";
	Vec3Color emissive;
	double opacity = 1.0;
	bool unlit = false;
	Vec3Color albedo;
	double roughness;
	double metallic;
	double scattering;
	String emissiveMap;
	String albedoMap;
	String opacityMap;
	String roughnessM<ap;
	String glossMap;
	String metallicMap;
	String specularMap;
	String normalMap;
	String bumpMap;
	String occlusionMap;
	String scatteringMap;
	String lightMap;
}

class MaterialResource {
	int materialVersion = 1;
	dynamic materials;
}

class MouseEvent {
	int x;
	int y;
	String button;
	bool isLeftButton;
	bool isMiddleButton;
	bool isRightButton;
	bool isShifted;
	bool isMeta;
	bool isControl;
	bool isAlt;
}

class PickRay {
	Vec3 origin;
	Vec3 direction;
}

enum PickType {
	Ray, Stylus
}

class Vec2 {
	num x;
	num y;
}

class PointerEvent {
	String type;
	int id;
	Vec2 pos2D;
	Vec3 pos3D;
	Vec3 normal;
	Vec3 direction;
	String button;
	bool isPrimaryButton;
	bool isLeftButton;
	bool isSecondaryButton;
	bool isRightButton;
	bool isTertiaryButton;
	bool isMiddleButton;
	bool isPrimaryHeld;
	bool isSecondaryHeld;
	bool isTertiaryHeld;
	int keyboardModifiers;
}

class Pose {
	Vec3 translation;
	Quat rotation;
	Vec3 velocity;
	Vec3 angularVelocity;
	bool valid;
}

class RayPickResult {
	int type;
	bool intersects;
	double distance;
	Vec3 intersection;
	Vec3 surfaceNormal;
	dynamic extraInfo;
	PickRay searchRay;
}

class Rect {
	int x;
	int y;
	int width;
	int height;
}

class Size {
	num height;
	num width;
}

class StylusTip {
	int side;
	Vec3 position;
	Quat orientation;
	Vec3 velocity;
}

class StylusPickResult {
	int type;
	bool intersects;
	double distance;
	Vec3 intersection;
	Vec3 surfaceNormal;
	dynamic extraInfo;
	StylusTip stylusTip;
}

class TouchEvent {
	int x;
	int y;
	bool isPressed;
	bool isMoved;
	bool isStationary;
	bool isReleased;
	bool isShifted;
	bool isMeta;
	bool isControl
	bool isAlt;
	int touchPoints;
	List<Vec2> points;
	double radius;
	bool isPinching;
	bool isPinchOpening;
	double angle;
	double deltaAngle;
	List<double> angles;
	bool isRotating;
	String rotating;
}

class Vec4 {
	num x;
	num y;
	num z;
	num w;
}

class ViewFrustrum {
	Vec3 position;
	Quat orientation;
	double centerRadius;
	double fieldOfView;
	num aspectRatio;
}

class WheelEvent {
	int x;
	int y;
	int delta;
	String orientation;
	bool isLeftButton;
	bool isMiddleButton;
	bool isRightButton;
	bool isShifted;
	bool isMeta;
	bool isControl;
	bool isAlt;
}

class AudioEffectOptions {
	num bandwidth = 10000;
	num preDelay = 20;
	num lateDelay = 0;
	num reverbTime = 2;
	num earlyDiffusion = 100;
	num lateDiffusion = 100;
	num roomSize = 50;
	num density = 100;
	double bassMult = 1.5;
	num bassFreq = 250;
	num highGain = -6;
	num highFreq = 3000;
	double modRate = 2.3;
	num modDepth = 50;
	num earlyGain = 0;
	num lateGain = 0;
	num earlyMixLeft = 20;
	num earlyMixRight = 20;
	num lateMixLeft = 90;
	num lateMixRight = 90;
	num wetDryMix = 50;
}

class KeyLight {
	Vec3 color;
	num intensity;
	num ambientIntensity;
	Vec3 direction;
}

class Location {
	num longitude;
	num latitude;
	num altitude;
}

class Time {
	int hour;
	int day;
}
