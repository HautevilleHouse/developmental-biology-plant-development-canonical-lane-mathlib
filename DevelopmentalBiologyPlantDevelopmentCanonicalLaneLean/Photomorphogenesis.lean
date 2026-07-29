import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentCanonicalLaneLean

structure Photoreceptor where
  name : String
  wavelengthAbsorbed : Float

structure PhotomorphogenesisPackage where
  phytochrome : Photoreceptor
  cryptochrome : Photoreceptor
  phototropin : Photoreceptor
  lightSignalTransduction : Prop
  hypocotylElongationResponse : Prop
  cotyledonExpansion : Prop

structure PhotomorphogenesisEvidence (P : PhotomorphogenesisPackage) where
  lightSignalTransductionClosed : P.lightSignalTransduction
  hypocotylElongationResponseClosed : P.hypocotylElongationResponse
  cotyledonExpansionClosed : P.cotyledonExpansion

def PhotomorphogenesisClosed (P : PhotomorphogenesisPackage) : Prop :=
  P.lightSignalTransduction ∧ P.hypocotylElongationResponse ∧ P.cotyledonExpansion

theorem photomorphogenesis_closed_from_evidence
    (P : PhotomorphogenesisPackage) (E : PhotomorphogenesisEvidence P) :
    PhotomorphogenesisClosed P := by
  exact And.intro E.lightSignalTransductionClosed
    (And.intro E.hypocotylElongationResponseClosed E.cotyledonExpansionClosed)

end DevelopmentalBiologyPlantDevelopmentCanonicalLaneLean
end HautevilleHouse