import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthFoundationCanonicalLaneLean

structure EulerPoleRotation where
  rotationAxis : Type
  rotationAngle : Float
  plateId : String
  angularVelocityConstrained : Prop
  angularVelocityConstrainedTerm : angularVelocityConstrained

structure PlateMotionEvidence (E : EulerPoleRotation) where
  angularVelocityConstrainedClosed : E.angularVelocityConstrained

def EulerPoleRotationClosed (E : EulerPoleRotation) : Prop :=
  E.angularVelocityConstrained

theorem euler_pole_rotation_closed_from_evidence (E : EulerPoleRotation) (Ev : PlateMotionEvidence E) :
    EulerPoleRotationClosed E := by
  exact Ev.angularVelocityConstrainedClosed

structure SphericalCapReconstruction where
  plateBoundarySegments : Type
  timeInterval : Type
  reconstructionClosed : Prop
  reconstructionClosedTerm : reconstructionClosed

structure ReconstructionEvidence (R : SphericalCapReconstruction) where
  reconstructionClosedTerm : R.reconstructionClosed

def ReconstructionClosed (R : SphericalCapReconstruction) : Prop :=
  R.reconstructionClosed

theorem reconstruction_closed_from_evidence (R : SphericalCapReconstruction) (E : ReconstructionEvidence R) :
    ReconstructionClosed R := by
  exact E.reconstructionClosedTerm

def PlateTectonicReconstructionPackage (E : EulerPoleRotation) (R : SphericalCapReconstruction) : Prop :=
  EulerPoleRotationClosed E ∧ ReconstructionClosed R

theorem plate_tectonic_reconstruction_package_closed (E : EulerPoleRotation) (R : SphericalCapReconstruction)
    (Ev : PlateMotionEvidence E) (Rv : ReconstructionEvidence R) :
    PlateTectonicReconstructionPackage E R := by
  exact And.intro (euler_pole_rotation_closed_from_evidence E Ev) (reconstruction_closed_from_evidence R Rv)

end EarthScienceGeophysicsSolidEarthFoundationCanonicalLaneLean
end HautevilleHouse