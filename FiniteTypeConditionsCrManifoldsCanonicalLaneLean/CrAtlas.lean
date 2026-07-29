import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteTypeConditionsCrManifoldsCanonicalLaneLean

structure CrAtlas (M : FiniteTypeSpace) where
  charts : Type w
  transitionMaps : Type x
  crStructure : Prop
  finiteTypeSubdivision : Prop
  holomorphicExtension : Prop
  crStructureTerm : crStructure
  finiteTypeSubdivisionTerm : finiteTypeSubdivision
  holomorphicExtensionTerm : holomorphicExtension

def CrAtlasClosed {M : FiniteTypeSpace} (A : CrAtlas M) : Prop :=
  A.crStructure ∧ A.finiteTypeSubdivision ∧ A.holomorphicExtension

theorem cr_atlas_closed_from_evidence {M : FiniteTypeSpace} (A : CrAtlas M) : CrAtlasClosed A := by
  exact And.intro A.crStructureTerm (And.intro A.finiteTypeSubdivisionTerm A.holomorphicExtensionTerm)

end FiniteTypeConditionsCrManifoldsCanonicalLaneLean
end HautevilleHouse