{$mode objfpc}

unit hifi;
interface
	uses js;

	type
		TAACube = record external name 'AACube'
			x: double;
			y: double;
			z: double;
			scale: double;
		end;
		
		TAttachmentData = record external name 'AttachmentData'
			modelUrl: string;
			jointName: string;
			translation: TVec3;
			rotation: TVec3;
			scale: double;
			soft: boolean;
		end;
		
		TCollision = record external name 'Collision'
			kind: TContactEvent external name 'type';
			idA: TUuid;
			idB: TUuid;
			penetration: TVec3;
			contactPoint: TVec3;
			velocityChange: TVec3;
		end;
		
		TCollisionContact = record external name 'CollisionContact'
			pointOnPick: TVec3;
			pointOnObject: TVec3;
			normalOnPick: TVec3;
		end;
		
		TCollisionPickResult = record external name 'CollisionPickResult'
			intersects: boolean;
			intersectingObjects: array of TIntersectingObject;
			collisionRegion: TCollisionRegion;
		end;
		
		TCollisionRegion = record external name 'CollisionRegion'
			shape: TShape;
			position: TVec3;
			orientation: TQuat;
			threshold: single;
			collisionGroup: nativeint;
			parentID: TUuid;
			parentJointIndex: nativeint;
			joint: string;
		end;
		
		TColor = record external name 'Color'
			red: byte;
			green: byte;
			blue: byte;
			r: byte;
			x: byte;
			g: byte;
			y: byte;
			b: byte;
			z: byte;
		end;
		
		TColorFloat = record external name 'ColorFloat'
			red: double;
			green: double;
			blue: double;
			r: double;
			x: double;
			g: double;
			y: double;
			b: double;
			z: double;
		end;
		
		TFBXAnimationFrame = record external name 'FBXAnimationFrame'
			rotations: array of TQuat;
			translations: array of TVec3;
		end;
		
		TIntersectingObject = record external name 'IntersectingObject'
			id: TUuid;
			kind: double external name 'type';
			collisionContacts: array of TCollisionContact;
		end;
		
		TKeyEvent = record external name 'KeyEvent'
			key: nativeint;
			text: string;
			isShifted: boolean;
			isMeta: boolean;
			isControl: boolean;
			isAlt: boolean;
			isKeypad: boolean;
			isAutoRepeat: boolean;
		end;
		
		TMaterial = record external name 'Material'
			name: string;
			model: string;
			emissive: TColor;
			opacity: double;
			unlit: boolean;
			albedo: TColor;
			roughness: double;
			metallic: double;
			scattering: double;
			emissiveMap: string;
			albedoMap: string;
			opacityMap: string;
			roughnessMap: string;
			glossMap: string;
			metallicMap: string;
			specularMap: string;
			normalMap: string;
			bumpMap: string;
			occlusionMap: string;
			scatteringMap: string;
			lightMap: string;
		end;
		
		TMaterialResource = record external name 'MaterialResource'
			materialVersion: nativeint;
			materials: array of TMaterial;
		end;
		
		TQuat = class external name 'Quat'
		public
			x: double;
			y: double;
			z: double;
			w: double;
			const IDENTITY: TQuat;
			class function angle(const q: TQuat): double;
			class function angleAxis(const angle: double; const axis: TVec3): TQuat;
			class function axis(const q: TQuat): TVec3;
			class function cancelOutRoll(const orientation: TQuat): TQuat;
			class function cancelOutRollAndPitch(const orientation: TQuat): TQuat;
			class function conjugate(const q: TQuat): TQuat;
			class function dot(const q1, q2: TQuat): double;
			class function equal(const q1, q2: TQuat): boolean;
			class function fromPitchYawRollDegrees(const pitch, yaw, roll: double): TQuat;
			class function fromPitchYawRollRadians(const pitch, yaw, roll: double): TQuat;
			class function fromVec3Degrees(const vector: TVec3): TQuat;
			class function fromVec3Radians(const vector: TVec3): TQuat;
			class function getForward(const orientation: TQuat): TVec3;
			class function getFront(const orientation: TQuat): TVec3;
			class function getRight(const orientation: TQuat): TVec3;
			class function getUp(const orientation: TQuat): TVec3;
			class function inverse(const q: TQuat): TQuat;
			class function lookAt(const eye, target, up: TVec3): TQuat;
			class function lookAtSimple(const eye, target: TVec3): TQuat;
			class function mix(const q1, q2: TQuat; const alpha: double): TQuat;
			class function multiply(const q1, q2: TQuat): TQuat;
			class function normalize(const q: TQuat): TQuat;
			class procedure print(const label: string; const q: TQuat; const asDegrees: boolean);
			class function rotationBetween(const v1, v2: TVec3): TQuat;
			class function safeEulerAngles(const orientation: TQuat): TVec3;
			class function slerp(const q1, q2: TQuat; const alpha: double): TQuat;
			class function squad(const q1, q2, s1, s2: TQuat; const alpha: double): TQuat;
		end;
		
		TShape = record external name 'Shape'
			shapeType: string;
			dimensions: TVec3;
		end;
		
		TUuid = class external name 'Uuid'
		public
			const NULL: TUuid;
			class function fromString(const s: string): TUuid;
			class function generate: TUuid;
			class function isEqual(const idA, idB: TUuid): boolean;
			class function isNull(const id: TUuid): boolean;
			class procedure print(const label: string; const id: TUuid);
			class function toString(const id: TUuid): string;
		end;
		
		TVec3 = class external name 'Vec3'
		public
			x: double;
			y: double;
			z: double;
			class function cross(const v1, v2: TVec3): TVec3;
			class function distance(const p1, p2: TVec3): double;
			class function dot(const v1, v2: TVec3): double;
			class function equal(const v1, v2: TVec3): boolean;
			class function fromPolar(const polar: TVec3): TVec3; overload;
			class function fromPolar(const elevation, azimuth: double): TVec3; overload;
			class function getAngle(const v1, v2: TVec3): double;
			class function length(const v: TVec3): double;
			class function mix(const v1, v2: TVec3; const factor: double): TVec3;
			class function multiply(const v: TVec3; const scale: double): TVec3; overload;
			class function multiply(const scale: double; const v: TVec3): TVec3; overload;
			class function multiplyQByV(const q: TQuat; const v: TVec3): TVec3;
			class function multiplyVByV(const v1, v2: TVec3): TVec3;
			class function normalize(const v: TVec3): TVec3;
			class function orientedAngle(const v1, v2, ref: TVec3): double;
			class procedure print(const label: string; const v: TVec3);
			class function reflect(const v1, normal: TVec3): TVec3;
			class function subtract(const v1, v2: TVec3): TVec3;
			class function sum(const v1, v2: TVec3): TVec3;
			class function toPolar(const p: TVec3): TVec3;
			class function withinEpsilon(const v1, v2: TVec3; const epsilon: double): boolean;
		end;
implementation
end.
