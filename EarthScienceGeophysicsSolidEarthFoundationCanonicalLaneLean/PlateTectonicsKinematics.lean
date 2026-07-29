import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthFoundationCanonicalLaneLean

structure PlateTectonicsKinematicsPackage where
  plateBoundary : Type u
  eulerPole : Type v
  relativeMotion : Prop
  deformationField : Prop
  crustStrainRate : Prop
  faultMechanics : Prop

structure PlateTectonicsKinematicsEvidence (P : PlateTectonicsKinematicsPackage) where
  relativeMotionClosed : P.relativeMotion
  deformationFieldClosed : P.deformationField
  crustStrainRateClosed : P.crustStrainRate
  faultMechanicsClosed : P.faultMechanics

def PlateTectonicsKinematicsClosed (P : PlateTectonicsKinematicsPackage) : Prop :=
  P.relativeMotion ∧ P.deformationField ∧ P.crustStrainRate ∧ P.faultMechanics

theorem plate_tectonics_kinematics_closed_from_evidence
    (P : PlateTectonicsKinematicsPackage) (Ev : PlateTectonicsKinematicsEvidence P) :
    PlateTectonicsKinematicsClosed P := by
  exact And.intro Ev.relativeMotionClosed (And.intro Ev.deformationFieldClosed (And.intro Ev.crustStrainRateClosed Ev.faultMechanicsClosed))

end EarthScienceGeophysicsSolidEarthFoundationCanonicalLaneLean
end HautevilleHouse