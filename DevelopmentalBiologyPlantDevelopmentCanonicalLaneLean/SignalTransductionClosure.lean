import canonicalLaneMathlib.AdmissibleClass
import DevelopmentalBiologyPlantDevelopmentCanonicalLaneLean.PrimitivePlantDevelopment

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentCanonicalLaneLean

structure SignalTransductionPackage {O : PrimitivePlantOrganism} {N : PrimitiveGeneRegulatoryNetwork O} (S : PrimitiveSignalTransductionPathway O N) where
  signalMoleculesIdentified : Prop
  receptorsIdentified : Prop
  cascadeElucidated : Prop
  transcriptionFactorsActivated : Prop
  pathwayRegulation : Prop

structure SignalTransductionEvidence {O : PrimitivePlantOrganism} {N : PrimitiveGeneRegulatoryNetwork O} {S : PrimitiveSignalTransductionPathway O N} (P : SignalTransductionPackage S) where
  signalMoleculesIdentifiedClosed : P.signalMoleculesIdentified
  receptorsIdentifiedClosed : P.receptorsIdentified
  cascadeElucidatedClosed : P.cascadeElucidated
  transcriptionFactorsActivatedClosed : P.transcriptionFactorsActivated
  pathwayRegulationClosed : P.pathwayRegulation

def SignalTransductionClosed {O : PrimitivePlantOrganism} {N : PrimitiveGeneRegulatoryNetwork O} {S : PrimitiveSignalTransductionPathway O N} (P : SignalTransductionPackage S) : Prop :=
  P.signalMoleculesIdentified ∧ P.receptorsIdentified ∧ P.cascadeElucidated ∧ P.transcriptionFactorsActivated ∧ P.pathwayRegulation

theorem signal_transduction_closed_from_evidence
    {O : PrimitivePlantOrganism} {N : PrimitiveGeneRegulatoryNetwork O}
    {S : PrimitiveSignalTransductionPathway O N} (P : SignalTransductionPackage S)
    (E : SignalTransductionEvidence P) : SignalTransductionClosed P := by
  exact And.intro E.signalMoleculesIdentifiedClosed
    (And.intro E.receptorsIdentifiedClosed
      (And.intro E.cascadeElucidatedClosed
        (And.intro E.transcriptionFactorsActivatedClosed E.pathwayRegulationClosed)))

end DevelopmentalBiologyPlantDevelopmentCanonicalLaneLean
end HautevilleHouse
