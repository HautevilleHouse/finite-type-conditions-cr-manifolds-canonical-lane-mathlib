import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteTypeConditionsCrManifoldsCanonicalLaneLean

structure TangentialCRComplex (M : FiniteTypeSpace) where
  tangentBundle : Type u
  crSubbundle : Type v
  leviForm : Type w
  integrability : Prop
  finiteTypeRank : Prop
  integrabilityTerm : integrability
  finiteTypeRankTerm : finiteTypeRank

def TangentialCRComplexClosed {M : FiniteTypeSpace} (T : TangentialCRComplex M) : Prop :=
  T.integrability ∧ T.finiteTypeRank

theorem tangential_cr_complex_closed {M : FiniteTypeSpace} (T : TangentialCRComplex M) : TangentialCRComplexClosed T := by
  exact And.intro T.integrabilityTerm T.finiteTypeRankTerm

end FiniteTypeConditionsCrManifoldsCanonicalLaneLean
end HautevilleHouse