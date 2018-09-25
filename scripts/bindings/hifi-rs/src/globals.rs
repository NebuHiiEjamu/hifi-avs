extern crate wasm_bindgen;

use wasm_bindgen::prelude::*;

#[wasm_bindgen]
extern {
	pub type AACube;
	pub type AttachmentData;
	pub type Collision;
	pub type CollisionContact;
	pub type CollisionPickResult;
	pub type CollisionRegion;
	pub type Color;
	pub type FBXAnimationFrame;
	pub type IntersectingObject;
	pub type KeyEvent;
	pub type Material;
	pub type MaterialResource;
	pub type MouseEvent;
	pub type ParabolaPickResult;
	pub type PickParabola;
	pub type PickRay;
	pub type PointerEvent;
	pub type Pose;
	pub type Quat;
	pub type RayPickResult;
	pub type Rect;
	pub type Shape;
	pub type Size;
	pub type StylusPickResult;
	pub type StylusTip;
	pub type TouchEvent;
	pub type Vec2;
	pub type Vec3;
	pub type Vec3Color;
	pub type Vec4;
	pub type ViewFrustrum;
	pub type WheelEvent;
}
