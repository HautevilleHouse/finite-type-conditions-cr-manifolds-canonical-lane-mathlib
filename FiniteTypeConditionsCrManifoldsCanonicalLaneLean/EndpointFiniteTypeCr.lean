import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteTypeConditionsCrManifoldsCanonicalLaneLean

structure EndpointFiniteTypeCrPackage where
  targetManifold : Type u
  targetTopology : TopologicalSpace targetManifold
  sphereModel : Type v
  sphereTopology : TopologicalSpace sphereModel
  crDiffeomorphismExists : Prop
  finiteTypeConditionMet : Prop

structure EndpointFiniteTypeCrEvidence (E : EndpointFiniteTypeCrPackage) where
  crDiffeomorphismExistsClosed : E.crDiffeomorphismExists
  finiteTypeConditionMetClosed : E.finiteTypeConditionMet

def EndpointFiniteTypeCrClosed (E : EndpointFiniteTypeCrPackage) : Prop :=
  E.crDiffeomorphismExists ∧ E.finiteTypeConditionMet

theorem endpoint_finite_type_cr_closed_from_evidence (E : EndpointFiniteTypeCrPackage)
    (Ev : EndpointFiniteTypeCrEvidence E) : EndpointFiniteTypeCrClosed E := by
  exact And.intro Ev.crDiffeomorphismExistsClosed Ev.finiteTypeConditionMetClosed

end FiniteTypeConditionsCrManifoldsCanonicalLaneLean
end HautevilleHouse