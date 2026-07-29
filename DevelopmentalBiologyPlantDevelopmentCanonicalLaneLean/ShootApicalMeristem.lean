import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentCanonicalLaneLean

structure ShootApicalMeristemPackage where
  stemCellPopulationDynamics : Prop
  wuschelClv3RegulatoryLoop : Prop
  cytokininAuxinCrossTalk : Prop
  meristemMaintenanceClosed : Prop

structure ShootApicalMeristemEvidence (S : ShootApicalMeristemPackage) where
  stemCellPopulationDynamicsClosed : S.stemCellPopulationDynamics
  wuschelClv3RegulatoryLoopClosed : S.wuschelClv3RegulatoryLoop
  cytokininAuxinCrossTalkClosed : S.cytokininAuxinCrossTalk
  meristemMaintenanceClosed : S.meristemMaintenanceClosed

def ShootApicalMeristemClosed (S : ShootApicalMeristemPackage) : Prop :=
  S.stemCellPopulationDynamics ∧ S.wuschelClv3RegulatoryLoop ∧
  S.cytokininAuxinCrossTalk ∧ S.meristemMaintenanceClosed

theorem shoot_apical_meristem_closed_from_evidence (S : ShootApicalMeristemPackage)
    (E : ShootApicalMeristemEvidence S) : ShootApicalMeristemClosed S :=
  And.intro E.stemCellPopulationDynamicsClosed
    (And.intro E.wuschelClv3RegulatoryLoopClosed
      (And.intro E.cytokininAuxinCrossTalkClosed E.meristemMaintenanceClosed))

end DevelopmentalBiologyPlantDevelopmentCanonicalLaneLean
end HautevilleHouse
