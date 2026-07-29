import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthFoundationCanonicalLaneLean

structure SeismicWaveTomographyModel where
  velocityField : Type
  travelTimeResiduals : Type
  inversionConverged : Prop
  resolutionMatrix : Type
  inversionConvergedTerm : inversionConverged

structure TomographyInversionEvidence (S : SeismicWaveTomographyModel) where
  inversionConvergedClosed : S.inversionConverged

def SeismicTomographyClosed (S : SeismicWaveTomographyModel) : Prop :=
  S.inversionConverged

theorem seismic_tomography_closed_from_evidence (S : SeismicWaveTomographyModel) (E : TomographyInversionEvidence S) :
    SeismicTomographyClosed S := by
  exact E.inversionConvergedClosed

end EarthScienceGeophysicsSolidEarthFoundationCanonicalLaneLean
end HautevilleHouse