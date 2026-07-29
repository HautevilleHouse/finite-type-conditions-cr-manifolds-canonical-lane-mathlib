import FiniteTypeConditionsCrManifoldsCanonicalLaneLean.SmoothCRStructure

namespace HautevilleHouse
namespace FiniteTypeConditionsCrManifoldsCanonicalLaneLean

structure FiniteTypeConditionPackage {G : SmoothCRStructurePackage} where
  formalPowerSeriesFiniteGeneration : Prop
  minimalGeneratingSet : Prop
  commutatorTypeFinite : Prop
  finiteJetDetermination : Prop

structure FiniteTypeConditionEvidence {G : SmoothCRStructurePackage}
    (F : FiniteTypeConditionPackage G) where
  formalPowerSeriesFiniteGenerationClosed : F.formalPowerSeriesFiniteGeneration
  minimalGeneratingSetClosed : F.minimalGeneratingSet
  commutatorTypeFiniteClosed : F.commutatorTypeFinite
  finiteJetDeterminationClosed : F.finiteJetDetermination

def FiniteTypeConditionClosed {G : SmoothCRStructurePackage}
    (F : FiniteTypeConditionPackage G) : Prop :=
  F.formalPowerSeriesFiniteGeneration ∧ F.minimalGeneratingSet ∧
  F.commutatorTypeFinite ∧ F.finiteJetDetermination

theorem finite_type_condition_closed_from_evidence
    {G : SmoothCRStructurePackage} (F : FiniteTypeConditionPackage G)
    (E : FiniteTypeConditionEvidence F) : FiniteTypeConditionClosed F := by
  exact And.intro E.formalPowerSeriesFiniteGenerationClosed
    (And.intro E.minimalGeneratingSetClosed
      (And.intro E.commutatorTypeFiniteClosed E.finiteJetDeterminationClosed))

end HautevilleHouse
end FiniteTypeConditionsCrManifoldsCanonicalLaneLean
