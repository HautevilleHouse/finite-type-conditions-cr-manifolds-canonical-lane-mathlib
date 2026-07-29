import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteTypeConditionsCrManifoldsCanonicalLaneLean

structure CrStructurePackage where
  baseManifold : Type u
  crAtlas : Type v
  transitionFunctionsCr : Prop
  finiteTypeCover : Prop
  maximalCrStructure : Prop

structure CrStructureEvidence (P : CrStructurePackage) where
  transitionFunctionsCrClosed : P.transitionFunctionsCr
  finiteTypeCoverClosed : P.finiteTypeCover
  maximalCrStructureClosed : P.maximalCrStructure

def CrStructureClosed (P : CrStructurePackage) : Prop :=
  P.transitionFunctionsCr ∧ P.finiteTypeCover ∧ P.maximalCrStructure

theorem cr_structure_closed_from_evidence (P : CrStructurePackage) (E : CrStructureEvidence P) :
    CrStructureClosed P := by
  exact And.intro E.transitionFunctionsCrClosed (And.intro E.finiteTypeCoverClosed E.maximalCrStructureClosed)

end FiniteTypeConditionsCrManifoldsCanonicalLaneLean
end HautevilleHouse