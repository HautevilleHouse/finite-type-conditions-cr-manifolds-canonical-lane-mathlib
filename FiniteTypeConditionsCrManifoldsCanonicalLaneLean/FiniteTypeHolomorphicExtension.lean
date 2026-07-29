import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteTypeConditionsCrManifoldsCanonicalLaneLean

structure FiniteTypeHolomorphicExtension (M : FiniteTypeSpace) where
  neighborhood : Type u
  holomorphicFunction : Prop
  extensionProperty : Prop
  finiteTypeBoundary : Prop
  holomorphicFunctionTerm : holomorphicFunction
  extensionPropertyTerm : extensionProperty
  finiteTypeBoundaryTerm : finiteTypeBoundary

def FiniteTypeHolomorphicExtensionClosed {M : FiniteTypeSpace} (E : FiniteTypeHolomorphicExtension M) : Prop :=
  E.holomorphicFunction ∧ E.extensionProperty ∧ E.finiteTypeBoundary

theorem finite_type_holomorphic_extension_closed {M : FiniteTypeSpace} (E : FiniteTypeHolomorphicExtension M)
    : FiniteTypeHolomorphicExtensionClosed E := by
  exact And.intro E.holomorphicFunctionTerm (And.intro E.extensionPropertyTerm E.finiteTypeBoundaryTerm)

end FiniteTypeConditionsCrManifoldsCanonicalLaneLean
end HautevilleHouse