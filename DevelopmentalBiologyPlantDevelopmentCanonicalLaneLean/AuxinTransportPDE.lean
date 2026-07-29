import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.PDE
import Mathlib.Analysis.Calculus.Gradient

/-!
# Auxin Transport PDE System
-/

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentCanonicalLaneLean

structure AuxinTransportPlasmaMembrane where
  pinProteins : String → ℝ
  effluxCarriers : String → ℝ
  influxCarriers : String → ℝ

def auxinFlux (pm : AuxinTransportPlasmaMembrane) (tissueType : String) : ℝ :=
  (pm.pinProteins tissueType - pm.effluxCarriers tissueType) / (pm.influxCarriers tissueType + 1)

structure AuxinTransportPDE where
  domainDimension : ℕ
  diffusionCoefficient : ℝ
  advectionVelocity : ℝ → ℝ
  polarTransportTerm : ℝ → ℝ
  pdeSystem : Prop
  boundaryConditions : Prop
  initialCondition : Prop

structure AuxinTransportPDEvidence (A : AuxinTransportPDE) where
  pdeSystemClosed : A.pdeSystem
  boundaryConditionsClosed : A.boundaryConditions
  initialConditionClosed : A.initialCondition

def AuxinTransportPDEClosed (A : AuxinTransportPDE) : Prop :=
  A.pdeSystem ∧ A.boundaryConditions ∧ A.initialCondition

theorem auxin_transport_pde_closed_from_evidence
    (A : AuxinTransportPDE) (E : AuxinTransportPDEvidence A) :
    AuxinTransportPDEClosed A := by
  exact And.intro E.pdeSystemClosed
    (And.intro E.boundaryConditionsClosed E.initialConditionClosed)

end DevelopmentalBiologyPlantDevelopmentCanonicalLaneLean
end HautevilleHouse