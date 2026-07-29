import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentCanonicalLaneLean

structure VascularDifferentiationPackage where
  procambiumSpecification : Prop
  xylemPhloemPatterning : Prop
  hdZipIIIKANADIInteraction : Prop
  vascularBundleClosed : Prop

structure VascularDifferentiationEvidence (V : VascularDifferentiationPackage) where
  procambiumSpecificationClosed : V.procambiumSpecification
  xylemPhloemPatterningClosed : V.xylemPhloemPatterning
  hdZipIIIKANADIInteractionClosed : V.hdZipIIIKANADIInteraction
  vascularBundleClosed : V.vascularBundleClosed

def VascularDifferentiationClosed (V : VascularDifferentiationPackage) : Prop :=
  V.procambiumSpecification ∧ V.xylemPhloemPatterning ∧
  V.hdZipIIIKANADIInteraction ∧ V.vascularBundleClosed

theorem vascular_differentiation_closed_from_evidence (V : VascularDifferentiationPackage)
    (E : VascularDifferentiationEvidence V) : VascularDifferentiationClosed V :=
  And.intro E.procambiumSpecificationClosed
    (And.intro E.xylemPhloemPatterningClosed
      (And.intro E.hdZipIIIKANADIInteractionClosed E.vascularBundleClosed))

end DevelopmentalBiologyPlantDevelopmentCanonicalLaneLean
end HautevilleHouse
