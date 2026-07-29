import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthFoundationCanonicalLaneLean

structure GravitationalFieldModelingPackage where
  gravityPotential : Type u
  geoidHeight : Type v
  massDistribution : Prop
  satelliteGradiometry : Prop
  timeVariableGravity : Prop

structure GravitationalFieldModelingEvidence (G : GravitationalFieldModelingPackage) where
  massDistributionClosed : G.massDistribution
  satelliteGradiometryClosed : G.satelliteGradiometry
  timeVariableGravityClosed : G.timeVariableGravity

def GravitationalFieldModelingClosed (G : GravitationalFieldModelingPackage) : Prop :=
  G.massDistribution ∧ G.satelliteGradiometry ∧ G.timeVariableGravity

theorem gravitational_field_modeling_closed_from_evidence
    (G : GravitationalFieldModelingPackage) (E : GravitationalFieldModelingEvidence G) :
    GravitationalFieldModelingClosed G := by
  exact And.intro E.massDistributionClosed (And.intro E.satelliteGradiometryClosed E.timeVariableGravityClosed)

end EarthScienceGeophysicsSolidEarthFoundationCanonicalLaneLean
end HautevilleHouse