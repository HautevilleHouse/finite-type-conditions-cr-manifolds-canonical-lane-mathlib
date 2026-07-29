import FiniteTypeConditionsCrManifoldsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace FiniteTypeConditionsCrManifoldsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CRManifoldSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  crStructure : Type

structure CRAdmittedObject where
  space : CRManifoldSpace
  finiteTypeCondition : Prop
  crCodimension : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  crEmbeddingToSphere : Prop
  conclusion : crEmbeddingToSphere

structure CREndgameState where
  object : CRAdmittedObject

def CRWitnessClosed (O : CRAdmittedObject) : Prop :=
  O.crEmbeddingToSphere

end HautevilleHouse
end FiniteTypeConditionsCrManifoldsCanonicalLaneLean
