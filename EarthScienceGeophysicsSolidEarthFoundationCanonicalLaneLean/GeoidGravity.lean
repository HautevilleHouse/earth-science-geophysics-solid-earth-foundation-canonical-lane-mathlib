import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthFoundationCanonicalLaneLean

structure GeoidPackage where
  potentialField : ℝ → ℝ → ℝ
  gravityAnomaly : ℝ → ℝ → ℝ
  referenceEllipsoid : Prop
  crustalCorrection : Prop

structure GeoidEvidence where
  referenceEllipsoidClosed : Prop
  crustalCorrectionClosed : Prop

def GeoidClosed (G : GeoidPackage) : Prop :=
  G.referenceEllipsoid ∧ G.crustalCorrection

theorem geoid_closed_from_evidence (G : GeoidPackage) (E : GeoidEvidence) : GeoidClosed G :=
  And.intro E.referenceEllipsoidClosed E.crustalCorrectionClosed

end EarthScienceGeophysicsSolidEarthFoundationCanonicalLaneLean
end HautevilleHouse