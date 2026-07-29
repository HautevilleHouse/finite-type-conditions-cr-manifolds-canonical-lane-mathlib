import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteTypeConditionsCrManifoldsCanonicalLaneLean

structure CRComplexStructure where
  manifold : CRManifold
  crBundle : Type u
  dbarOperator : Type v
  dbarCoBoundary : Type w
  kohnLaplacianExists : Prop

structure CRComplexEvidence (C : CRComplexStructure) where
  kohnLaplacianExistsClosed : C.kohnLaplacianExists
  dbarOperatorClosed : Prop

def CRComplexClosed (C : CRComplexStructure) : Prop :=
  C.kohnLaplacianExists

theorem cr_complex_closed_from_evidence (C : CRComplexStructure) (E : CRComplexEvidence C) : CRComplexClosed C := by
  exact E.kohnLaplacianExistsClosed

end FiniteTypeConditionsCrManifoldsCanonicalLaneLean
end HautevilleHouse
