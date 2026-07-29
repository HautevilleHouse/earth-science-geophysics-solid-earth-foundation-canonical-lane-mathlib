import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthFoundationCanonicalLaneLean

structure ElasticGravitationalAnomaliesPackage where
  gravitationalField : Type u
  elasticDeformation : Type v
  anomalyModel : Prop
  crustalStructure : Prop
  mantleConvection : Prop
  isostasyModel : Prop

structure ElasticGravitationalAnomaliesEvidence (E : ElasticGravitationalAnomaliesPackage) where
  anomalyModelClosed : E.anomalyModel
  crustalStructureClosed : E.crustalStructure
  mantleConvectionClosed : E.mantleConvection
  isostasyModelClosed : E.isostasyModel

def ElasticGravitationalAnomaliesClosed (E : ElasticGravitationalAnomaliesPackage) : Prop :=
  E.anomalyModel ∧ E.crustalStructure ∧ E.mantleConvection ∧ E.isostasyModel

theorem elastic_gravitational_anomalies_closed_from_evidence
    (E : ElasticGravitationalAnomaliesPackage) (Ev : ElasticGravitationalAnomaliesEvidence E) :
    ElasticGravitationalAnomaliesClosed E := by
  exact And.intro Ev.anomalyModelClosed (And.intro Ev.crustalStructureClosed (And.intro Ev.mantleConvectionClosed Ev.isostasyModelClosed))

end EarthScienceGeophysicsSolidEarthFoundationCanonicalLaneLean
end HautevilleHouse