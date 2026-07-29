import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteTypeConditionsCrManifoldsCanonicalLaneLean

structure SubLaplacianPDE where
  manifold : Type u
  crStructure : Prop
  subLaplacianDefined : Prop
  heatKernelExists : Prop
  fundamentalSolution : Prop

structure FiniteTypeCrPDEEvidence (P : SubLaplacianPDE) where
  subLaplacianDefinedClosed : P.subLaplacianDefined
  heatKernelExistsClosed : P.heatKernelExists
  fundamentalSolutionClosed : P.fundamentalSolution

def FiniteTypeCrPDEClosed (P : SubLaplacianPDE) : Prop :=
  P.subLaplacianDefined ∧ P.heatKernelExists ∧ P.fundamentalSolution

theorem finite_type_cr_pde_closed_from_evidence (P : SubLaplacianPDE) (E : FiniteTypeCrPDEEvidence P) :
    FiniteTypeCrPDEClosed P := by
  exact And.intro E.subLaplacianDefinedClosed (And.intro E.heatKernelExistsClosed E.fundamentalSolutionClosed)

end FiniteTypeConditionsCrManifoldsCanonicalLaneLean
end HautevilleHouse