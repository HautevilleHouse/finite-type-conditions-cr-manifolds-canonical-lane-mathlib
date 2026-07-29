import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteTypeConditionsCrManifoldsCanonicalLaneLean

structure CRManifold where
  carrier : Type u
  topology : TopologicalSpace carrier
  crDimension : ℕ
  almostComplexStructure : Type v
  integrability : Prop

structure FiniteTypeCondition where
  manifold : CRManifold
  dBarLaplacianHasFiniteSpectrum : Prop
  compactEmbedding : Prop
  sobolevInequality : Prop

structure FiniteTypeEvidence (F : FiniteTypeCondition) where
  dBarLaplacianHasFiniteSpectrumClosed : F.dBarLaplacianHasFiniteSpectrum
  compactEmbeddingClosed : F.compactEmbedding
  sobolevInequalityClosed : F.sobolevInequality

def FiniteTypeClosed (F : FiniteTypeCondition) : Prop :=
  F.dBarLaplacianHasFiniteSpectrum ∧ F.compactEmbedding ∧ F.sobolevInequality

theorem finite_type_closed_from_evidence (F : FiniteTypeCondition) (E : FiniteTypeEvidence F) : FiniteTypeClosed F := by
  exact And.intro E.dBarLaplacianHasFiniteSpectrumClosed (And.intro E.compactEmbeddingClosed E.sobolevInequalityClosed)

end FiniteTypeConditionsCrManifoldsCanonicalLaneLean
end HautevilleHouse
