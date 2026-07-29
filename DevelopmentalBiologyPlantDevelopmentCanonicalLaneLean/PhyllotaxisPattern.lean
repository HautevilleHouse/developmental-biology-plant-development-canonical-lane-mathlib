import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentCanonicalLaneLean

structure PhyllotaxisPatternPackage where
  auxinTransportModel : Prop
  polarAuxinTransportBias : Prop
  inhibitorReactionDiffusion : Prop
  spiralPatternEmergence : Prop

structure PhyllotaxisPatternEvidence (P : PhyllotaxisPatternPackage) where
  auxinTransportModelClosed : P.auxinTransportModel
  polarAuxinTransportBiasClosed : P.polarAuxinTransportBias
  inhibitorReactionDiffusionClosed : P.inhibitorReactionDiffusion
  spiralPatternEmergenceClosed : P.spiralPatternEmergence

def PhyllotaxisPatternClosed (P : PhyllotaxisPatternPackage) : Prop :=
  P.auxinTransportModel ∧ P.polarAuxinTransportBias ∧
  P.inhibitorReactionDiffusion ∧ P.spiralPatternEmergence

theorem phyllotaxis_pattern_closed_from_evidence (P : PhyllotaxisPatternPackage)
    (E : PhyllotaxisPatternEvidence P) : PhyllotaxisPatternClosed P :=
  And.intro E.auxinTransportModelClosed
    (And.intro E.polarAuxinTransportBiasClosed
      (And.intro E.inhibitorReactionDiffusionClosed E.spiralPatternEmergenceClosed))

end DevelopmentalBiologyPlantDevelopmentCanonicalLaneLean
end HautevilleHouse
