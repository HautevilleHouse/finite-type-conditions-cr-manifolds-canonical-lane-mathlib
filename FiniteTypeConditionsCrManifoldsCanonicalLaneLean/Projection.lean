import FiniteTypeConditionsCrManifoldsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FiniteTypeConditionsCrManifoldsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def crProjection : Projection CREndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem cr_projection_idempotent (x : CREndgameState) :
    crProjection.toFun (crProjection.toFun x) = crProjection.toFun x := by
  exact crProjection.idempotent x

end HautevilleHouse
end FiniteTypeConditionsCrManifoldsCanonicalLaneLean
