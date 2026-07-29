import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentCanonicalLaneLean

structure MeristemIdentityPackage where
  wuschelCladeSpecification : Prop
  clavataFeedbackLoop : Prop
  stemCellNicheMaintenance : Prop
  spatialExpressionGradient : Prop
  meristemBoundaryFormation : Prop

structure MeristemIdentityEvidence (M : MeristemIdentityPackage) where
  wuschelCladeSpecificationClosed : M.wuschelCladeSpecification
  clavataFeedbackLoopClosed : M.clavataFeedbackLoop
  stemCellNicheMaintenanceClosed : M.stemCellNicheMaintenance
  spatialExpressionGradientClosed : M.spatialExpressionGradient
  meristemBoundaryFormationClosed : M.meristemBoundaryFormation

def MeristemIdentityClosed (M : MeristemIdentityPackage) : Prop :=
  M.wuschelCladeSpecification ∧ M.clavataFeedbackLoop ∧
  M.stemCellNicheMaintenance ∧ M.spatialExpressionGradient ∧
  M.meristemBoundaryFormation

theorem meristem_identity_closed_from_evidence (M : MeristemIdentityPackage)
    (E : MeristemIdentityEvidence M) : MeristemIdentityClosed M := by
  exact And.intro E.wuschelCladeSpecificationClosed
    (And.intro E.clavataFeedbackLoopClosed
      (And.intro E.stemCellNicheMaintenanceClosed
        (And.intro E.spatialExpressionGradientClosed
          E.meristemBoundaryFormationClosed)))

end DevelopmentalBiologyPlantDevelopmentCanonicalLaneLean
end HautevilleHouse