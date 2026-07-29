import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentCanonicalLaneLean

structure PlantOrganism where
  species : String
  genomeSize : Nat

structure MeristematicTissue where
  cellType : String
  divisionRate : Float

structure MorphogenesisPrimitivePackage where
  organism : PlantOrganism
  meristem : MeristematicTissue
  shootApicalOrganized : Prop
  rootApicalOrganized : Prop
  vascularDifferentiation : Prop

structure MorphogenesisEvidence (M : MorphogenesisPrimitivePackage) where
  shootApicalOrganizedClosed : M.shootApicalOrganized
  rootApicalOrganizedClosed : M.rootApicalOrganized
  vascularDifferentiationClosed : M.vascularDifferentiation

def MorphogenesisClosed (M : MorphogenesisPrimitivePackage) : Prop :=
  M.shootApicalOrganized ∧ M.rootApicalOrganized ∧ M.vascularDifferentiation

theorem morphogenesis_closed_from_evidence (M : MorphogenesisPrimitivePackage)
    (E : MorphogenesisEvidence M) : MorphogenesisClosed M := by
  exact And.intro E.shootApicalOrganizedClosed
    (And.intro E.rootApicalOrganizedClosed E.vascularDifferentiationClosed)

end DevelopmentalBiologyPlantDevelopmentCanonicalLaneLean
end HautevilleHouse