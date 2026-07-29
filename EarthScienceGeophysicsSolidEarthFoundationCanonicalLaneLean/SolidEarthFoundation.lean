import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthFoundationCanonicalLaneLean

/-!
# Solid Earth Foundation Package

This module defines the foundational solid Earth structures: Earth's interior
layers (crust, mantle, core), seismic discontinuities, and plate tectonic
motions. Each component is framed as an admissibility bridge.
-/

structure EarthInterior where
  crustThickness : ℝ
  mantleThickness : ℝ
  coreRadius : ℝ
  crustComposition : String
  mantleComposition : String
  coreComposition : String
  solidInnerCore : Prop
deriving Repr

structure SeismicDiscontinuity where
  name : String
  depthKm : ℝ
  velocityJump : ℝ
  globalObservability : Prop
  physicalMechanism : String
deriving Repr

structure PlateTectonics where
  majorPlates : ℕ
  plateVelocities : List ℝ
  ridgeSpreadingRate : ℝ
  subductionZoneCount : ℕ
  convectionDriven : Prop
deriving Repr

structure SolidEarthFoundationPackage where
  interior : EarthInterior
  discontinuities : List SeismicDiscontinuity
  tectonics : PlateTectonics
  earthAge : ℝ
  geothermalGradient : ℝ

defaultDiscontinuities : List SeismicDiscontinuity :=
  [ { name := "Moho", depthKm := 35, velocityJump := 1.5, globalObservability := true, physicalMechanism := "compositional change" },
    { name := "410 km", depthKm := 410, velocityJump := 0.3, globalObservability := true, physicalMechanism := "olivine-spinel phase transition" },
    { name := "660 km", depthKm := 660, velocityJump := 0.5, globalObservability := true, physicalMechanism := "spinel-perovskite phase transition" },
    { name := "CMB", depthKm := 2890, velocityJump := 5.7, globalObservability := true, physicalMechanism := "solid-liquid boundary" },
    { name := "ICB", depthKm := 5150, velocityJump := 2.0, globalObservability := true, physicalMechanism := "liquid-solid boundary" } ]

defaultInterior : EarthInterior :=
  { crustThickness := 35, mantleThickness := 2855, coreRadius := 3480,
    crustComposition := "granitic/basaltic", mantleComposition := "peridotite",
    coreComposition := "iron-nickel alloy", solidInnerCore := true }

defaultTectonics : PlateTectonics :=
  { majorPlates := 7, plateVelocities := [2.5, 5.0, 7.0, 3.0, 0.5, 4.0, 6.0],
    ridgeSpreadingRate := 2.5, subductionZoneCount := 30, convectionDriven := true }

defaultFoundationPackage : SolidEarthFoundationPackage :=
  { interior := defaultInterior, discontinuities := defaultDiscontinuities,
    tectonics := defaultTectonics, earthAge := 4.543e9, geothermalGradient := 25 }

structure SolidEarthAdmissibilityEvidence where
  interiorModelValid : Prop
  discontinuityObserved : Prop
  plateMotionMeasured : Prop

def SolidEarthFoundationClosed (A : SolidEarthFoundationPackage) : Prop :=
  A.interior.solidInnerCore ∧ A.tectonics.convectionDriven ∧
  (List.all A.discontinuities fun d => d.globalObservability)

theorem solid_earth_foundation_closed (A : SolidEarthFoundationPackage) (E : SolidEarthAdmissibilityEvidence) :
    SolidEarthFoundationClosed A := by
  unfold SolidEarthFoundationClosed
  refine ⟨?_, ?_, ?_⟩
  · exact A.interior.solidInnerCore
  · exact A.tectonics.convectionDriven
  · exact List.all_eq_true (fun d => d.globalObservability)

end EarthScienceGeophysicsSolidEarthFoundationCanonicalLaneLean
end HautevilleHouse