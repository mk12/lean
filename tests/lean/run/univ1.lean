namespace S1
axiom I : Type*
definition F (X : Type*) : Type* := (X → Prop) → Prop
axiom {u} unfoldd : I.{u} → F I.{u}
axiom {l} foldd   : F I.{l} → I.{l}
axiom iso1 : ∀x, foldd (unfoldd x) = x
end S1

namespace S2
universe variables u
axiom I : Type.{u}
definition F (X : Type*) : Type* := (X → Prop) → Prop
axiom unfoldd : I → F I
axiom foldd   : F I → I
axiom iso1 : ∀x, foldd (unfoldd x) = x
end S2


namespace S3
section
  parameter I : Type*
  definition F (X : Type*) : Type* := (X → Prop) → Prop
  parameter unfoldd : I → F I
  parameter foldd   : F I → I
  parameter iso1 : ∀x, foldd (unfoldd x) = x
end
end S3
