import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentCanonicalLaneLean

structure FloralOrgan where
  organType : String
  identityGene : String

structure FloralDevelopmentPackage where
  sepals : FloralOrgan
  petals : FloralOrgan
  stamens : FloralOrgan
  carpels : FloralOrgan
  ABCModel : Prop
  floralMeristemIdentity : Prop

structure FloralDevelopmentEvidence (F : FloralDevelopmentPackage) where
  ABCModelClosed : F.ABCModel
  floralMeristemIdentityClosed : F.floralMeristemIdentity

def FloralDevelopmentClosed (F : FloralDevelopmentPackage) : Prop :=
  F.ABCModel ∧ F.floralMeristemIdentity

theorem floral_development_closed_from_evidence
    (F : FloralDevelopmentPackage) (E : FloralDevelopmentEvidence F) :
    FloralDevelopmentClosed F := by
  exact And.intro E.ABCModelClosed E.floralMeristemIdentityClosed

end DevelopmentalBiologyPlantDevelopmentCanonicalLaneLean
end HautevilleHouse