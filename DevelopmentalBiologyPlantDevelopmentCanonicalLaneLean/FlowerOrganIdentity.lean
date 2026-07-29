import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentCanonicalLaneLean

structure FlowerOrganIdentityPackage where
  abcModelSpecification : Prop
  floralMeristemIdentity : Prop
  sepalPetalStamenCarpelIdentity : Prop
  organBoundaryFormation : Prop
  homeoticMutationPhenotype : Prop

structure FlowerOrganIdentityEvidence (F : FlowerOrganIdentityPackage) where
  abcModelSpecificationClosed : F.abcModelSpecification
  floralMeristemIdentityClosed : F.floralMeristemIdentity
  sepalPetalStamenCarpelIdentityClosed : F.sepalPetalStamenCarpelIdentity
  organBoundaryFormationClosed : F.organBoundaryFormation
  homeoticMutationPhenotypeClosed : F.homeoticMutationPhenotype

def FlowerOrganIdentityClosed (F : FlowerOrganIdentityPackage) : Prop :=
  F.abcModelSpecification ∧ F.floralMeristemIdentity ∧
  F.sepalPetalStamenCarpelIdentity ∧ F.organBoundaryFormation ∧
  F.homeoticMutationPhenotype

theorem flower_organ_identity_closed_from_evidence (F : FlowerOrganIdentityPackage)
    (E : FlowerOrganIdentityEvidence F) : FlowerOrganIdentityClosed F := by
  exact And.intro E.abcModelSpecificationClosed
    (And.intro E.floralMeristemIdentityClosed
      (And.intro E.sepalPetalStamenCarpelIdentityClosed
        (And.intro E.organBoundaryFormationClosed
          E.homeoticMutationPhenotypeClosed)))

end DevelopmentalBiologyPlantDevelopmentCanonicalLaneLean
end HautevilleHouse