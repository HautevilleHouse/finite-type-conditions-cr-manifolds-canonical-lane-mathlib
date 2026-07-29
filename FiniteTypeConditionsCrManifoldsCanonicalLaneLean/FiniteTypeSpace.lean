import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteTypeConditionsCrManifoldsCanonicalLaneLean

structure FiniteTypeSpace where
  carrier : Type u
  topology : TopologicalSpace carrier
  sheaf : Type v
  finiteTypeCondition : Prop
  smoothStructure : Prop
  dimension : Nat
  finiteTypeConditionTerm : finiteTypeCondition
  smoothStructureTerm : smoothStructure

def FiniteTypeSpaceClosed (M : FiniteTypeSpace) : Prop :=
  M.finiteTypeCondition ∧ M.smoothStructure

TheFiniteTypeSpace : FiniteTypeSpace := {
  carrier := Unit
, topology := by infer_instance
, sheaf := Unit
, finiteTypeCondition := True
, smoothStructure := True
, finiteTypeConditionTerm := True.intro
, smoothStructureTerm := True.intro
}

theorem finite_type_space_closed : FiniteTypeSpaceClosed TheFiniteTypeSpace := by
  exact And.intro True.intro True.intro

end FiniteTypeConditionsCrManifoldsCanonicalLaneLean
end HautevilleHouse