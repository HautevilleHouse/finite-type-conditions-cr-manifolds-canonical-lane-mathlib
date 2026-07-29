import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteTypeConditionsCrManifoldsCanonicalLaneLean

structure FiniteTypeCrNoncollapsingPackage where
  manifold : Type u
  smoothCrStructure : Prop
  finiteTypeCondition : Prop
  volumeGrowthBounded : Prop
  injectivityRadiusLowerBound : Prop

structure FiniteTypeCrNoncollapsingEvidence (N : FiniteTypeCrNoncollapsingPackage) where
  finiteTypeConditionClosed : N.finiteTypeCondition
  volumeGrowthBoundedClosed : N.volumeGrowthBounded
  injectivityRadiusLowerBoundClosed : N.injectivityRadiusLowerBound

def FiniteTypeCrNoncollapsingClosed (N : FiniteTypeCrNoncollapsingPackage) : Prop :=
  N.finiteTypeCondition ∧ N.volumeGrowthBounded ∧ N.injectivityRadiusLowerBound

theorem finite_type_cr_noncollapsing_closed_from_evidence (N : FiniteTypeCrNoncollapsingPackage)
    (E : FiniteTypeCrNoncollapsingEvidence N) : FiniteTypeCrNoncollapsingClosed N := by
  exact And.intro E.finiteTypeConditionClosed (And.intro E.volumeGrowthBoundedClosed E.injectivityRadiusLowerBoundClosed)

end FiniteTypeConditionsCrManifoldsCanonicalLaneLean
end HautevilleHouse