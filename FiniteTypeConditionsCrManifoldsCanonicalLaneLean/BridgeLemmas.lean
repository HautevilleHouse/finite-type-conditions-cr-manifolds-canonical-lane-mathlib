import FiniteTypeConditionsCrManifoldsCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace FiniteTypeConditionsCrManifoldsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CrManifoldWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FiniteTypeConditionsCrManifoldsCanonicalLaneLean
end HautevilleHouse