import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthFoundationCanonicalLaneLean

structure PlateKinematicsPackage where
  velocityField : ℝ → ℝ → ℝ × ℝ
  rotationPole : ℝ × ℝ
  deformationRate : Prop
  boundaryType : Prop
  rigidBodyAssumption : Prop

structure PlateKinematicsEvidence where
  deformationRateClosed : Prop
  boundaryTypeClosed : Prop
  rigidBodyAssumptionClosed : Prop

def PlateKinematicsClosed (P : PlateKinematicsPackage) : Prop :=
  P.deformationRate ∧ P.boundaryType ∧ P.rigidBodyAssumption

theorem plate_kinematics_closed_from_evidence (P : PlateKinematicsPackage) (E : PlateKinematicsEvidence) : PlateKinematicsClosed P := by
  exact And.intro E.deformationRateClosed (And.intro E.boundaryTypeClosed E.rigidBodyAssumptionClosed)

end EarthScienceGeophysicsSolidEarthFoundationCanonicalLaneLean
end HautevilleHouse