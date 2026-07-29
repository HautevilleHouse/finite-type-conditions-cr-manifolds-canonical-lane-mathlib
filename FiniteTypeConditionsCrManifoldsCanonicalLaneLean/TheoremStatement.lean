import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteTypeConditionsCrManifoldsCanonicalLaneLean

structure FiniteTypeCrSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure FiniteTypeCrAdmittedObject where
  space : FiniteTypeCrSpace
  crManifold : Prop
  finiteTypeCondition : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  homeomorphicToCrSphere : Prop
  conclusion : homeomorphicToCrSphere

structure FiniteTypeCrEndgameState where
  object : FiniteTypeCrAdmittedObject

def FiniteTypeCrWitnessClosed (O : FiniteTypeCrAdmittedObject) : Prop :=
  O.homeomorphicToCrSphere

end FiniteTypeConditionsCrManifoldsCanonicalLaneLean
end HautevilleHouse