import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthFoundationCanonicalLaneLean

structure MantleConvectionDynamicsPackage where
  viscosityModel : Type u
  thermalBoundaryLayer : Type v
  convectionEquations : Type w
  rayleighNumberAdvection : Prop
  heatSources : Prop
  plateDrivingForces : Prop

structure MantleConvectionDynamicsEvidence (M : MantleConvectionDynamicsPackage) where
  rayleighNumberAdvectionClosed : M.rayleighNumberAdvection
  heatSourcesClosed : M.heatSources
  plateDrivingForcesClosed : M.plateDrivingForces

def MantleConvectionDynamicsClosed (M : MantleConvectionDynamicsPackage) : Prop :=
  M.rayleighNumberAdvection ∧ M.heatSources ∧ M.plateDrivingForces

theorem mantle_convection_dynamics_closed_from_evidence
    (M : MantleConvectionDynamicsPackage) (E : MantleConvectionDynamicsEvidence M) :
    MantleConvectionDynamicsClosed M := by
  exact And.intro E.rayleighNumberAdvectionClosed (And.intro E.heatSourcesClosed E.plateDrivingForcesClosed)

end EarthScienceGeophysicsSolidEarthFoundationCanonicalLaneLean
end HautevilleHouse