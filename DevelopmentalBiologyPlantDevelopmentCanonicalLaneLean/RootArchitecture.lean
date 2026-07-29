import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentCanonicalLaneLean

structure RootBranch where
  branchOrder : Nat
  length : Float

structure RootArchitecturePackage where
  primaryRoot : RootBranch
  lateralRoots : List RootBranch
  gravitropicResponse : Prop
  nutrientUptakeEfficiency : Prop

structure RootArchitectureEvidence (R : RootArchitecturePackage) where
  gravitropicResponseClosed : R.gravitropicResponse
  nutrientUptakeEfficiencyClosed : R.nutrientUptakeEfficiency

def RootArchitectureClosed (R : RootArchitecturePackage) : Prop :=
  R.gravitropicResponse ∧ R.nutrientUptakeEfficiency

theorem root_architecture_closed_from_evidence
    (R : RootArchitecturePackage) (E : RootArchitectureEvidence R) :
    RootArchitectureClosed R := by
  exact And.intro E.gravitropicResponseClosed E.nutrientUptakeEfficiencyClosed

end DevelopmentalBiologyPlantDevelopmentCanonicalLaneLean
end HautevilleHouse