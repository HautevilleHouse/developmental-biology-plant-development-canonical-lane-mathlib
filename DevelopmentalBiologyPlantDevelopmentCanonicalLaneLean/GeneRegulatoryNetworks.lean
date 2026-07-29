import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentCanonicalLaneLean

structure TranscriptionFactor where
  name : String
  bindingMotif : String

structure GeneRegulatoryNetworkPackage where
  transcriptionFactors : List TranscriptionFactor
  targetGenes : List String
  regulatoryEdges : Prop
  networkCoherence : Prop

structure GeneRegulatoryNetworkEvidence (N : GeneRegulatoryNetworkPackage) where
  regulatoryEdgesClosed : N.regulatoryEdges
  networkCoherenceClosed : N.networkCoherence

def GeneRegulatoryNetworkClosed (N : GeneRegulatoryNetworkPackage) : Prop :=
  N.regulatoryEdges ∧ N.networkCoherence

theorem gene_regulatory_network_closed_from_evidence
    (N : GeneRegulatoryNetworkPackage) (E : GeneRegulatoryNetworkEvidence N) :
    GeneRegulatoryNetworkClosed N := by
  exact And.intro E.regulatoryEdgesClosed E.networkCoherenceClosed

end DevelopmentalBiologyPlantDevelopmentCanonicalLaneLean
end HautevilleHouse