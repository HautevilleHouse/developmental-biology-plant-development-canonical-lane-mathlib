import canonicalLaneMathlib.AdmissibleClass
import DevelopmentalBiologyPlantDevelopmentCanonicalLaneLean.PrimitivePlantDevelopment

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentCanonicalLaneLean

structure MorphogenGradientPackage {O : PrimitivePlantOrganism} (M : PrimitiveMorphogenGradient O) where
  morphogenIdentified : Prop
  sourceLocalized : Prop
  gradientMeasured : Prop
  diffusionCoefficientDetermined : Prop
  gradientStable : Prop

structure MorphogenGradientEvidence {O : PrimitivePlantOrganism} {M : PrimitiveMorphogenGradient O} (P : MorphogenGradientPackage M) where
  morphogenIdentifiedClosed : P.morphogenIdentified
  sourceLocalizedClosed : P.sourceLocalized
  gradientMeasuredClosed : P.gradientMeasured
  diffusionCoefficientDeterminedClosed : P.diffusionCoefficientDetermined
  gradientStableClosed : P.gradientStable

def MorphogenGradientClosed {O : PrimitivePlantOrganism} {M : PrimitiveMorphogenGradient O} (P : MorphogenGradientPackage M) : Prop :=
  P.morphogenIdentified ∧ P.sourceLocalized ∧ P.gradientMeasured ∧ P.diffusionCoefficientDetermined ∧ P.gradientStable

theorem morphogen_gradient_closed_from_evidence
    {O : PrimitivePlantOrganism} {M : PrimitiveMorphogenGradient O}
    (P : MorphogenGradientPackage M) (E : MorphogenGradientEvidence P) :
    MorphogenGradientClosed P := by
  exact And.intro E.morphogenIdentifiedClosed
    (And.intro E.sourceLocalizedClosed
      (And.intro E.gradientMeasuredClosed
        (And.intro E.diffusionCoefficientDeterminedClosed E.gradientStableClosed)))

end DevelopmentalBiologyPlantDevelopmentCanonicalLaneLean
end HautevilleHouse
