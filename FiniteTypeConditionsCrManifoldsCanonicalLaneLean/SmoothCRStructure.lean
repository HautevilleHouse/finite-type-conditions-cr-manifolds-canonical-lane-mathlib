import FiniteTypeConditionsCrManifoldsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace FiniteTypeConditionsCrManifoldsCanonicalLaneLean

structure SmoothCRStructurePackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  crBundle : Type v
  formalPowerSeries : Type w
  smoothCRManifold : Prop
  formalIntegrability : Prop
  crStructureSmooth : Prop

structure SmoothCRStructureEvidence (G : SmoothCRStructurePackage) where
  smoothCRManifoldClosed : G.smoothCRManifold
  formalIntegrabilityClosed : G.formalIntegrability
  crStructureSmoothClosed : G.crStructureSmooth

def SmoothCRStructureClosed (G : SmoothCRStructurePackage) : Prop :=
  G.smoothCRManifold ∧ G.formalIntegrability ∧ G.crStructureSmooth

theorem smooth_cr_structure_closed_from_evidence
    (G : SmoothCRStructurePackage) (E : SmoothCRStructureEvidence G) :
    SmoothCRStructureClosed G := by
  exact And.intro E.smoothCRManifoldClosed
    (And.intro E.formalIntegrabilityClosed E.crStructureSmoothClosed)

end HautevilleHouse
end FiniteTypeConditionsCrManifoldsCanonicalLaneLean
