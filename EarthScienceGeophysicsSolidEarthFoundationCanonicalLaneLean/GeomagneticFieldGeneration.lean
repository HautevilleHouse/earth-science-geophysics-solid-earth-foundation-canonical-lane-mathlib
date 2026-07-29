import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthFoundationCanonicalLaneLean

structure GeomagneticFieldGenerationPackage where
  outerCoreFlow : Type u
  magneticInductionEquation : Prop
  dynamoAction : Prop
  fieldReversals : Prop
  coreMantleCoupling : Prop

structure GeomagneticFieldGenerationEvidence (G : GeomagneticFieldGenerationPackage) where
  magneticInductionEquationClosed : G.magneticInductionEquation
  dynamoActionClosed : G.dynamoAction
  fieldReversalsClosed : G.fieldReversals
  coreMantleCouplingClosed : G.coreMantleCoupling

def GeomagneticFieldGenerationClosed (G : GeomagneticFieldGenerationPackage) : Prop :=
  G.magneticInductionEquation ∧ G.dynamoAction ∧
  G.fieldReversals ∧ G.coreMantleCoupling

theorem geomagnetic_field_generation_closed_from_evidence
    (G : GeomagneticFieldGenerationPackage) (E : GeomagneticFieldGenerationEvidence G) :
    GeomagneticFieldGenerationClosed G := by
  exact And.intro E.magneticInductionEquationClosed
    (And.intro E.dynamoActionClosed
      (And.intro E.fieldReversalsClosed E.coreMantleCouplingClosed))

end EarthScienceGeophysicsSolidEarthFoundationCanonicalLaneLean
end HautevilleHouse