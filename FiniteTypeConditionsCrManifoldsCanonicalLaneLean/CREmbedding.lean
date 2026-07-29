import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteTypeConditionsCrManifoldsCanonicalLaneLean

structure CREmbedding (M N : FiniteTypeSpace) where
  embeddingMap : M.carrier → N.carrier
  crMap : Prop
  finiteTypePreservation : Prop
  codimension : ℕ
  crMapTerm : crMap
  finiteTypePreservationTerm : finiteTypePreservation

def CREmbeddingClosed {M N : FiniteTypeSpace} (E : CREmbedding M N) : Prop :=
  E.crMap ∧ E.finiteTypePreservation

theorem cr_embedding_closed {M N : FiniteTypeSpace} (E : CREmbedding M N) : CREmbeddingClosed E := by
  exact And.intro E.crMapTerm E.finiteTypePreservationTerm

end FiniteTypeConditionsCrManifoldsCanonicalLaneLean
end HautevilleHouse