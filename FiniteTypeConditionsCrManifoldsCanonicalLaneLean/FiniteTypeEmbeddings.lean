import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteTypeConditionsCrManifoldsCanonicalLaneLean

structure FiniteTypeEmbeddingPackage {P : CrStructurePackage} where
  embeddingTarget : Type u
  embeddingCrSmooth : Prop
  properEmbedding : Prop
  finiteTypePreserved : Prop

structure FiniteTypeEmbeddingEvidence {P : CrStructurePackage} (E : FiniteTypeEmbeddingPackage P) where
  embeddingCrSmoothClosed : E.embeddingCrSmooth
  properEmbeddingClosed : E.properEmbedding
  finiteTypePreservedClosed : E.finiteTypePreserved

def FiniteTypeEmbeddingClosed {P : CrStructurePackage} (E : FiniteTypeEmbeddingPackage P) : Prop :=
  E.embeddingCrSmooth ∧ E.properEmbedding ∧ E.finiteTypePreserved

theorem finite_type_embedding_closed_from_evidence {P : CrStructurePackage}
    (E : FiniteTypeEmbeddingPackage P) (Ev : FiniteTypeEmbeddingEvidence E) :
    FiniteTypeEmbeddingClosed E := by
  exact And.intro Ev.embeddingCrSmoothClosed (And.intro Ev.properEmbeddingClosed Ev.finiteTypePreservedClosed)

end FiniteTypeConditionsCrManifoldsCanonicalLaneLean
end HautevilleHouse