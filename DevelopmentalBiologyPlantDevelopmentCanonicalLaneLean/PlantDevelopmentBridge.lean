import canonicalLaneMathlib.AdmissibleClass
import DevelopmentalBiologyPlantDevelopmentCanonicalLaneLean.PrimitivePlantDevelopment

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | PlantAdmittedObject O =>
    O.geneticCircuitDefined ∧ O.geneticCircuitDefinedTerm
  | _ => False

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  rcases A with ⟨object, _, _, _⟩
  rcases object with ⟨O⟩
  exact And.intro O.geneticCircuitDefined O.geneticCircuitDefinedTerm

end DevelopmentalBiologyPlantDevelopmentCanonicalLaneLean
end HautevilleHouse
