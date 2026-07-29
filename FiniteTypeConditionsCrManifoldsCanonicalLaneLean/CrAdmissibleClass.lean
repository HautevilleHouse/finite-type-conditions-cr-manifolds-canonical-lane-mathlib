import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteTypeConditionsCrManifoldsCanonicalLaneLean

structure CrManifoldAdmittedObject where
  mfld : Type
u
  crSmoothness : Nat
  finiteTypeCondition : Prop
  conclusion : finiteTypeCondition

structure AdmissibleClass where
  object : CrManifoldAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CrWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def CrWitnessClosed (O : CrManifoldAdmittedObject) : Prop :=
  O.finiteTypeCondition

end FiniteTypeConditionsCrManifoldsCanonicalLaneLean
end HautevilleHouse