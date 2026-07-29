import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthFoundationCanonicalLaneLean

structure GeodeticStrainRateTensor where
  epoch : Type
  stationCoordinates : Type
  displacementRates : Type
  strainComponents : Nat
  dataSampled : Prop
  strainComponentsClosed : strainComponents = 6
  dataSampledTerm : dataSampled

structure StrainAccumulationEvidence (G : GeodeticStrainRateTensor) where
  strainComponentsClosed : G.strainComponents = 6
  dataSampledClosed : G.dataSampled

def GeodeticStrainRateClosed (G : GeodeticStrainRateTensor) : Prop :=
  G.strainComponents = 6 ∧ G.dataSampled

theorem geodetic_strain_rate_closed_from_evidence (G : GeodeticStrainRateTensor) (E : StrainAccumulationEvidence G) :
    GeodeticStrainRateClosed G := by
  exact And.intro E.strainComponentsClosed E.dataSampledClosed

end EarthScienceGeophysicsSolidEarthFoundationCanonicalLaneLean
end HautevilleHouse