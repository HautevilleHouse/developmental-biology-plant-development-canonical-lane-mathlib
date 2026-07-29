import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentCanonicalLaneLean

structure EmbryogenesisPatterningPackage where
  apicalBasalAxisEstablishment : Prop
  radialPatterning : Prop
  suspensorSpecification : Prop
  rootMeristemInitiation : Prop
  shootMeristemInitiation : Prop
  cotyledonFormation : Prop

structure EmbryogenesisPatterningEvidence (E : EmbryogenesisPatterningPackage) where
  apicalBasalAxisEstablishmentClosed : E.apicalBasalAxisEstablishment
  radialPatterningClosed : E.radialPatterning
  suspensorSpecificationClosed : E.suspensorSpecification
  rootMeristemInitiationClosed : E.rootMeristemInitiation
  shootMeristemInitiationClosed : E.shootMeristemInitiation
  cotyledonFormationClosed : E.cotyledonFormation

def EmbryogenesisPatterningClosed (E : EmbryogenesisPatterningPackage) : Prop :=
  E.apicalBasalAxisEstablishment ∧ E.radialPatterning ∧
  E.suspensorSpecification ∧ E.rootMeristemInitiation ∧
  E.shootMeristemInitiation ∧ E.cotyledonFormation

theorem embryogenesis_patterning_closed_from_evidence (E : EmbryogenesisPatterningPackage)
    (Ev : EmbryogenesisPatterningEvidence E) : EmbryogenesisPatterningClosed E := by
  exact And.intro Ev.apicalBasalAxisEstablishmentClosed
    (And.intro Ev.radialPatterningClosed
      (And.intro Ev.suspensorSpecificationClosed
        (And.intro Ev.rootMeristemInitiationClosed
          (And.intro Ev.shootMeristemInitiationClosed
            Ev.cotyledonFormationClosed))))

end DevelopmentalBiologyPlantDevelopmentCanonicalLaneLean
end HautevilleHouse