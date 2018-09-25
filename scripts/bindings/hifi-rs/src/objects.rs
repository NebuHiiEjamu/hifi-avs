extern crate js_sys;
extern crate qtscript_sys;
extern crate wasm_bindgen;

use js_sys::Object;
use wasm_bindgen::prelude::*;

#[wasm_bindgen]
extern {
	pub type AnimationObject;
	pub type AudioEffectOptions;
	pub type AudioInjector;
	pub type AudioInjectorOptions;
	pub type AudioStreamStats;
	pub type InteractiveWindow;
	pub type MappingObject;
	pub type ReverbOptions = AudioEffectOptions;
	pub type RouteObject;
	
	#[wasm_bindgen(method)]
	pub fn close(this: &mut InteractiveWindow);
	
	#[wasm_bindgen(method)]
	pub fn disable(this: &mut MappingObject) -> MappingObject;
	
	#[wasm_bindgen(method, js_name = emitScriptEvent)]
	pub fn emit_script_event(this: &mut InteractiveWindow, message: &Object);
	
	#[wasm_bindgen(method, js_name = emitWebEvent)]
	pub fn emit_web_event(this: &mut InteractiveWindow, message: &Object);
	
	#[wasm_bindgen(method)]
	pub fn enable(this: &mut MappingObject, enable: bool) -> MappingObject;
	
	#[wasm_bindgen(method, js_name = getLoudness)]
	pub fn get_loudness(this: &AudioInjector) -> f64;
	
	#[wasm_bindgen(method, js_name = getOptions)]
	pub fn get_options(this: &AudioInjector) -> AudioInjectorOptions;
	
	#[wasm_bindgen(method, js_name = isPlaying)]
	pub fn is_playing(this: &AudioInjector) -> bool;
	
	#[wasm_bindgen(method)]
	pub fn raise(this: &mut InteractiveWindow);
	
	#[wasm_bindgen(method)]
	pub fn restart(this: &mut AudioInjector);
	
	#[wasm_bindgen(method, js_name = sendToQml)]
	pub fn send_to_qml(this: &mut InteractiveWindow, message: &Object);
	
	#[wasm_bindgen(method, js_name = setOptions)]
	pub fn set_options(this: &mut AudioInjector);
	
	#[wasm_bindgen(method)]
	pub fn show(this: &mut InteractiveWindow);
	
	#[wasm_bindgen(method)]
	pub fn stop(this: &mut AudioInjector);
	
	#[wasm_bindgen(method, js_name = stopInjectorImmediately)]
	pub fn stop_injector_immediately(this: &mut AudioInjector);
}
