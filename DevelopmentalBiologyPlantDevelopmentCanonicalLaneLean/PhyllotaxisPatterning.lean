import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentCanonicalLaneLean

structure PhyllotaxisPatterningPackage where
  auxinTransportDynamics : Prop
  polarLocalization : Prop
  primordiumInitiation : Prop
  spiralDistichousTransition : Prop
  robinHoodStabilization : Prop

structure PhyllotaxisPatterningEvidence (P : PhyllotaxisPatterningPackage) where
  auxinTransportDynamicsClosed : P.auxinTransportDynamics
  polarLocalizationClosed : P.polarLocalization
  primordiumInitiationClosed : P.primordiumInitiation
  spiralDistichousTransitionClosed : P.spiralDistichousTransition
  robinHoodStabilizationClosed : P.robinHoodStabilization

def PhyllotaxisPatterningClosed (P : PhyllotaxisPatterningPackage) : Prop :=
  P.auxinTransportDynamics ∧ P.polarLocalization ∧
  P.primordiumInitiation ∧ P.spiralDistichousTransition ∧
  P.robinHoodStabilization

theorem phyllotaxis_patterning_closed_from_evidence (P : PhyllotaxisPatterningPackage)
    (E : PhyllotaxisPatterningEvidence P) : PhyllotaxisPatterningClosed P := by
  exact And.intro E.auxinTransportDynamicsClosed
    (And.intro E.polarLocalizationClosed
      (And.intro E.primordiumInitiationClosed
        (And.intro E.spiralDistichousTransitionClosed
          E.robinHoodStabilizationClosed)))

end DevelopmentalBiologyPlantDevelopmentCanonicalLaneLean
end HautevilleHouse