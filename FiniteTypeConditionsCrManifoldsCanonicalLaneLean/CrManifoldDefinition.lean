import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteTypeConditionsCrManifoldsCanonicalLaneLean

structure CrManifold (r : ℕ) where
  carrier : Type
  topology : TopologicalSpace carrier
  atlas : Set (Set carrier)
  crStructure : CrStructure carrier r
  finiteType : Bool
  compatibility : Prop

def CrManifoldWitnessClosed (M : CrManifold) : Prop :=
  M.compatibility

structure FiniteTypeCrManifoldObject where
  manifold : CrManifold 1
  finiteTypeCondition : Prop
  conclusion : finiteTypeCondition

end FiniteTypeConditionsCrManifoldsCanonicalLaneLean
end HautevilleHouse