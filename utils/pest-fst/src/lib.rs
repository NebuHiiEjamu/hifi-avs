extern crate pest;
extern crate pest_derive;

enum FstRule {
	Bs,
	Filename,
	Float,
	FreeJoint,
	Ident,
	Joint,
	JointIndex,
	Lod,
	Name,
	Path,
	Scale,
	TexDir,
	Type,
	Uint,
}

#[derive(Parser)]
#[grammar = "fst.pest"]
pub struct FstParser;
