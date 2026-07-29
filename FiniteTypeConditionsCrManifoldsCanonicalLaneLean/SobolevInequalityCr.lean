import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteTypeConditionsCrManifoldsCanonicalLaneLean

structure SobolevInequalityCrPackage where
  manifold : Type u
  crMetric : Prop
  sobolevConstant : ℝ
  sobolevInequalityHolds : Prop
  optimalConstantKnown : Prop

structure SobolevInequalityCrEvidence (S : SobolevInequalityCrPackage) where
  sobolevInequalityHoldsClosed : S.sobolevInequalityHolds
  optimalConstantKnownClosed : S.optimalConstantKnown

def SobolevInequalityCrClosed (S : SobolevInequalityCrPackage) : Prop :=
  S.sobolevInequalityHolds ∧ S.optimalConstantKnown

theorem sobolev_inequality_cr_closed_from_evidence (S : SobolevInequalityCrPackage)
    (E : SobolevInequalityCrEvidence S) : SobolevInequalityCrClosed S := by
  exact And.intro E.sobolevInequalityHoldsClosed E.optimalConstantKnownClosed

end FiniteTypeConditionsCrManifoldsCanonicalLaneLean
end HautevilleHouse