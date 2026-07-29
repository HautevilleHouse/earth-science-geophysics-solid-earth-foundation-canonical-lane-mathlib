import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthFoundationCanonicalLaneLean

structure GravityFieldAnomalyModel where
  referenceEllipsoid : Type
  freeAirAnomaly : Type
  bouguerCorrectionApplied : Prop
  crustalDensityModel : Type
  isostaticCompensation : Prop
  bouguerCorrectionAppliedTerm : bouguerCorrectionApplied
  isostaticCompensationTerm : isostaticCompensation

structure GravityAnomalyEvidence (G : GravityFieldAnomalyModel) where
  bouguerCorrectionAppliedClosed : G.bouguerCorrectionApplied
  isostaticCompensationClosed : G.isostaticCompensation

def GravityAnomalyClosed (G : GravityFieldAnomalyModel) : Prop :=
  G.bouguerCorrectionApplied ∧ G.isostaticCompensation

theorem gravity_anomaly_closed_from_evidence (G : GravityFieldAnomalyModel) (E : GravityAnomalyEvidence G) :
    GravityAnomalyClosed G := by
  exact And.intro E.bouguerCorrectionAppliedClosed E.isostaticCompensationClosed

end EarthScienceGeophysicsSolidEarthFoundationCanonicalLaneLean
end HautevilleHouse