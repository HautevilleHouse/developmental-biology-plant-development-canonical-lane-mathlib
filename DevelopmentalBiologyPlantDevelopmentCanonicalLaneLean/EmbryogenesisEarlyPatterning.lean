import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentCanonicalLaneLean

structure EmbryogenesisEarlyPatterningPackage where
  asymmetricCellDivision : Prop
  rootShootAxisEstablishment : Prop
  auxinMaximaFormation : Prop
  cotyledonPrimordiaSpecified : Prop

structure EmbryogenesisEarlyPatterningEvidence (E : EmbryogenesisEarlyPatterningPackage) where
  asymmetricCellDivisionClosed : E.asymmetricCellDivision
  rootShootAxisEstablishmentClosed : E.rootShootAxisEstablishment
  auxinMaximaFormationClosed : E.auxinMaximaFormation
  cotyledonPrimordiaSpecifiedClosed : E.cotyledonPrimordiaSpecified

def EmbryogenesisEarlyPatterningClosed (E : EmbryogenesisEarlyPatterningPackage) : Prop :=
  E.asymmetricCellDivision ∧ E.rootShootAxisEstablishment ∧
  E.auxinMaximaFormation ∧ E.cotyledonPrimordiaSpecified

theorem embryogenesis_early_patterning_closed_from_evidence
    (E : EmbryogenesisEarlyPatterningPackage)
    (Ev : EmbryogenesisEarlyPatterningEvidence E) : EmbryogenesisEarlyPatterningClosed E :=
  And.intro Ev.asymmetricCellDivisionClosed
    (And.intro Ev.rootShootAxisEstablishmentClosed
      (And.intro Ev.auxinMaximaFormationClosed Ev.cotyledonPrimordiaSpecifiedClosed))

end DevelopmentalBiologyPlantDevelopmentCanonicalLaneLean
end HautevilleHouse
