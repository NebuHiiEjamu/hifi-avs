declare namespace hifi
{
	export class AACube
	{
		x: number;
		y: number;
		z: number;
		scale: number;
	}
	
	export class AttachmentData
	{
		modelUrl: string;
		jointName: string;
		translation: Vec3;
		rotation: Vec3;
		scale: number;
		soft: boolean;
	}
	
	export class AnimationObject
	{
		jointNames: Array<string>;
		
	}
	
	export class Uuid
	{
		fromString(str: string): Uuid;
		generate(): Uuid;
		isEqual(idA: Uuid, idB: Uuid): boolean;
		isNull(id: Uuid): boolean;
		print(label: string, id: Uuid): void;
		toString(id: Uuid): string;
	}
	
	export class Vec3
	{
		x: number;
		y: number;
		z: number;
	}
}
