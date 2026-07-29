import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def plantDevelopmentProjection : Projection PlantDevelopmentEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem plant_development_projection_idempotent (x : PlantDevelopmentEndgameState) :
    plantDevelopmentProjection.toFun (plantDevelopmentProjection.toFun x) = 
    plantDevelopmentProjection.toFun x := by
  exact plantDevelopmentProjection.idempotent x

end DevelopmentalBiologyPlantDevelopmentCanonicalLaneLean
end HautevilleHouse
