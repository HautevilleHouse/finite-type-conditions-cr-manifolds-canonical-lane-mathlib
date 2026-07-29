import FiniteTypeConditionsCrManifoldsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace FiniteTypeConditionsCrManifoldsCanonicalLaneLean

def ConstrainedFiniteTypeClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_finite_type_endgame (A : AdmissibleClass) :
    ConstrainedFiniteTypeClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FiniteTypeConditionsCrManifoldsCanonicalLaneLean
end HautevilleHouse