import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentCanonicalLaneLean

structure PrimitivePlantOrganism where
  species : String
  cellType : Type
  tissueContext : Prop
  developmentalStage : String
  geneticCircuit : Prop
  cellTypeDefined : Prop
  tissueContextDefined : cellType -> tissueContext -> Prop
  developmentalStageDefined : Prop
  geneticCircuitDefined : Prop
  cellTypeDefinedTerm : cellTypeDefined
  tissueContextDefinedTerm : tissueContextDefined
  developmentalStageDefinedTerm : developmentalStageDefined
  geneticCircuitDefinedTerm : geneticCircuitDefined

structure PrimitiveTimeDomain where
  Time : Type
  start : Time
  le : Time -> Time -> Prop
  intervalTopology : Prop
  hasInitialTime : Prop
  locallyFiniteBreakSet : Prop
  intervalTopologyTerm : intervalTopology
  hasInitialTimeTerm : hasInitialTime
  locallyFiniteBreakSetTerm : locallyFiniteBreakSet

structure PrimitiveGeneRegulatoryNetwork (O : PrimitivePlantOrganism) where
  nodes : Type
  edges : Type
  regulationFunction : List (nodes × nodes) -> Prop
  feedbackLoops : Prop
  stableStates : Prop
  nodesDefined : Prop
  edgesDefined : nodes -> edges -> Prop
  regulationDefined : Prop
  feedbackLoopsTerm : feedbackLoops
  stableStatesTerm : stableStates

structure PrimitiveSignalTransductionPathway (O : PrimitivePlantOrganism) (N : PrimitiveGeneRegulatoryNetwork O) where
  signalMolecules : Type
  receptors : Type
  cascade : Prop
  transcriptionFactors : List signalMolecules
  pathwayActivated : Prop
  signalMoleculesDefined : Prop
  receptorsDefined : signalMolecules -> receptors -> Prop
  cascadeDefined : Prop
  transcriptionFactorsDefined : Prop
  pathwayActivatedTerm : pathwayActivated

structure PrimitiveCellDivisionPattern (O : PrimitivePlantOrganism) where
  divisionPlane : Prop
  symmetricDivision : Prop
  asymmetricDivision : Prop
  stemCellMaintenance : Prop
  divisionPlaneTerm : divisionPlane
  symmetricDivisionTerm : symmetricDivision
  asymmetricDivisionTerm : asymmetricDivision
  stemCellMaintenanceTerm : stemCellMaintenance

structure PrimitiveMorphogenGradient (O : PrimitivePlantOrganism) where
  morphogen : Type
  source : O.cellType -> Prop
  gradientProfile : morphogen -> O.cellType -> Float
  diffusionCoefficient : Float
  gradientEstablished : Prop
  gradientEstablishedTerm : gradientEstablished

structure PrimitiveAuxinTransport (O : PrimitivePlantOrganism) where
  PINProteins : Type
  AUXProteins : Type
  flux : PINProteins -> AUXProteins -> Float
  transportDirection : Prop
  polarLocalization : Prop
  transportDirectionTerm : transportDirection
  polarLocalizationTerm : polarLocalization

structure PrimitiveOrganDevelopment (O : PrimitivePlantOrganism) where
  primordiumFormation : Prop
  meristemActivity : Prop
  organIdentityGenes : Prop
  phyllotaxis : Prop
  primordiumFormationTerm : primordiumFormation
  meristemActivityTerm : meristemActivity
  organIdentityGenesTerm : organIdentityGenes
  phyllotaxisTerm : phyllotaxis

end DevelopmentalBiologyPlantDevelopmentCanonicalLaneLean
end HautevilleHouse
