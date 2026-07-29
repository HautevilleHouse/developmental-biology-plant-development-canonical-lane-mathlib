import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DevelopmentalBiologyPlantDevelopmentCanonicalLaneLean.MeristemIdentityNetwork
import HautevilleHouse.DevelopmentalBiologyPlantDevelopmentCanonicalLaneLean.AuxinTransportPDE
import HautevilleHouse.DevelopmentalBiologyPlantDevelopmentCanonicalLaneLean.PhyllotaxisPatternFormation
import HautevilleHouse.DevelopmentalBiologyPlantDevelopmentCanonicalLaneLean.FloralOrganSpecification
import HautevilleHouse.DevelopmentalBiologyPlantDevelopmentCanonicalLaneLean.RootGravitropismResponse

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

def ConstrainedDevelopmentalBiologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

theorem constrained_developmental_biology_endgame (A : AdmissibleClass) :
    ConstrainedDevelopmentalBiologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DevelopmentalBiologyPlantDevelopmentCanonicalLaneLean
end HautevilleHouse