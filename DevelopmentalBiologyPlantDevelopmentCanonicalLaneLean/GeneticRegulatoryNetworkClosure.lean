import canonicalLaneMathlib.AdmissibleClass
import DevelopmentalBiologyPlantDevelopmentCanonicalLaneLean.PrimitivePlantDevelopment

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentCanonicalLaneLean

structure GeneticRegulatoryNetworkPackage {O : PrimitivePlantOrganism} (N : PrimitiveGeneRegulatoryNetwork O) where
  nodesIdentified : Prop
  edgesIdentified : Prop
  regulationFunctionDetermined : Prop
  stableStatesComputed : Prop
  networkRobustness : Prop

structure GeneticRegulatoryNetworkEvidence {O : PrimitivePlantOrganism} {N : PrimitiveGeneRegulatoryNetwork O} (P : GeneticRegulatoryNetworkPackage N) where
  nodesIdentifiedClosed : P.nodesIdentified
  edgesIdentifiedClosed : P.edgesIdentified
  regulationFunctionDeterminedClosed : P.regulationFunctionDetermined
  stableStatesComputedClosed : P.stableStatesComputed
  networkRobustnessClosed : P.networkRobustness

def GeneticRegulatoryNetworkClosed {O : PrimitivePlantOrganism} {N : PrimitiveGeneRegulatoryNetwork O} (P : GeneticRegulatoryNetworkPackage N) : Prop :=
  P.nodesIdentified ∧ P.edgesIdentified ∧ P.regulationFunctionDetermined ∧ P.stableStatesComputed ∧ P.networkRobustness

theorem genetic_regulatory_network_closed_from_evidence
    {O : PrimitivePlantOrganism} {N : PrimitiveGeneRegulatoryNetwork O}
    (P : GeneticRegulatoryNetworkPackage N) (E : GeneticRegulatoryNetworkEvidence P) :
    GeneticRegulatoryNetworkClosed P := by
  exact And.intro E.nodesIdentifiedClosed
    (And.intro E.edgesIdentifiedClosed
      (And.intro E.regulationFunctionDeterminedClosed
        (And.intro E.stableStatesComputedClosed E.networkRobustnessClosed)))

end DevelopmentalBiologyPlantDevelopmentCanonicalLaneLean
end HautevilleHouse
