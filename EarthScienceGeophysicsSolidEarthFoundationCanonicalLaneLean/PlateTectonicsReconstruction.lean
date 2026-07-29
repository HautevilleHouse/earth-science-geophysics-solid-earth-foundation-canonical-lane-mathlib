import EarthScienceGeophysicsSolidEarthFoundationCanonicalLaneLean.GeomagneticDynamoTheory

/-!
# Plate Tectonics Reconstruction Package
-/

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthFoundationCanonicalLaneLean

structure PlateTectonicsPackage where
  plateBoundariesMapped : Prop
  seafloorSpreadingRate : ℝ
  subductionZonesIdentified : Prop
  paleomagneticDataFit : Prop
  absolutePlateMotionsComputed : Prop

def PlateTectonicsClosed (P : PlateTectonicsPackage) : Prop :=
  P.plateBoundariesMapped ∧ P.subductionZonesIdentified ∧ P.paleomagneticDataFit

end EarthScienceGeophysicsSolidEarthFoundationCanonicalLaneLean
end HautevilleHouse