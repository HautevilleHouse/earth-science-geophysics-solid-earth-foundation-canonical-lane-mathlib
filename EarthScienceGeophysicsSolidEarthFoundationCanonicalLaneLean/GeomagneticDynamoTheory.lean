import EarthScienceGeophysicsSolidEarthFoundationCanonicalLaneLean.MantleConvectionDynamics

/-!
# Geomagnetic Dynamo Theory Package
-/

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthFoundationCanonicalLaneLean

structure GeomagneticDynamoPackage where
  outerCoreConductivity : ℝ
  magneticReynoldsNumber : ℝ
  selfExcitingDynamo : Prop
  fieldReversalRecorded : Prop
  toroidalPoloidalDecomposition : Prop

def GeomagneticDynamoClosed (G : GeomagneticDynamoPackage) : Prop :=
  G.selfExcitingDynamo ∧ G.fieldReversalRecorded ∧ G.toroidalPoloidalDecomposition

end EarthScienceGeophysicsSolidEarthFoundationCanonicalLaneLean
end HautevilleHouse