import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  PlantDevelopmentWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DevelopmentalBiologyPlantDevelopmentCanonicalLaneLean
end HautevilleHouse
