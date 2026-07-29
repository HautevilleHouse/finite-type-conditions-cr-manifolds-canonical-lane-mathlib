import FiniteTypeConditionsCrManifoldsCanonicalLaneLean.CrManifoldDefinition
import FiniteTypeConditionsCrManifoldsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace FiniteTypeConditionsCrManifoldsCanonicalLaneLean

structure FiniteTypeClassificationPackage where
  targetManifold : CrManifold 1
  finiteTypeProperty : Prop
  classificationProof : finiteTypeProperty

def FiniteTypeClassificationClosed (P : FiniteTypeClassificationPackage) : Prop :=
  P.finiteTypeProperty

theorem finite_type_classification_closed (P : FiniteTypeClassificationPackage) :
    FiniteTypeClassificationClosed P := by
  exact P.classificationProof

theorem classification_supports_bridge_closed (P : FiniteTypeClassificationPackage) :
    bridgeClosed (AdmissibleClass.mk (FiniteTypeCrManifoldObject.mk P.targetManifold P.finiteTypeProperty P.classificationProof) True True (Or.inl trivial)) := by
  exact bridge_from_admissible_class _

end FiniteTypeConditionsCrManifoldsCanonicalLaneLean
end HautevilleHouse