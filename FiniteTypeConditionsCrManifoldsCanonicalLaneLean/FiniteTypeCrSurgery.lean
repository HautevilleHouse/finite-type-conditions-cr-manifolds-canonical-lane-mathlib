import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteTypeConditionsCrManifoldsCanonicalLaneLean

structure FiniteTypeCrSurgeryPackage where
  beforeSurgery : Type u
  afterSurgery : Type v
  surgeryPerformed : Prop
  finiteTypePreserved : Prop
  crStructureRestored : Prop

structure FiniteTypeCrSurgeryEvidence (S : FiniteTypeCrSurgeryPackage) where
  surgeryPerformedClosed : S.surgeryPerformed
  finiteTypePreservedClosed : S.finiteTypePreserved
  crStructureRestoredClosed : S.crStructureRestored

def FiniteTypeCrSurgeryClosed (S : FiniteTypeCrSurgeryPackage) : Prop :=
  S.surgeryPerformed ∧ S.finiteTypePreserved ∧ S.crStructureRestored

theorem finite_type_cr_surgery_closed_from_evidence (S : FiniteTypeCrSurgeryPackage)
    (E : FiniteTypeCrSurgeryEvidence S) : FiniteTypeCrSurgeryClosed S := by
  exact And.intro E.surgeryPerformedClosed (And.intro E.finiteTypePreservedClosed E.crStructureRestoredClosed)

end FiniteTypeConditionsCrManifoldsCanonicalLaneLean
end HautevilleHouse