import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthFoundationCanonicalLaneLean

structure EarthStructureTomographyPackage where
  velocityModel : Type u
  rayPathGeometry : Type v
  inversionRegularization : Type w
  travelTimeData : Prop
  resolutionAnalysis : Prop

structure EarthStructureTomographyEvidence (T : EarthStructureTomographyPackage) where
  travelTimeDataClosed : T.travelTimeData
  resolutionAnalysisClosed : T.resolutionAnalysis

def EarthStructureTomographyClosed (T : EarthStructureTomographyPackage) : Prop :=
  T.travelTimeData ∧ T.resolutionAnalysis

theorem earth_structure_tomography_closed_from_evidence
    (T : EarthStructureTomographyPackage) (E : EarthStructureTomographyEvidence T) :
    EarthStructureTomographyClosed T := by
  exact And.intro E.travelTimeDataClosed E.resolutionAnalysisClosed

end EarthScienceGeophysicsSolidEarthFoundationCanonicalLaneLean
end HautevilleHouse