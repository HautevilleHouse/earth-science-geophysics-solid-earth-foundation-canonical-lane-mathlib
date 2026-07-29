import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthFoundationCanonicalLaneLean

structure SeismicWavePropagationPackage where
  elasticMedium : Type u
  pWaveSpeed : Type v
  sWaveSpeed : Type w
  waveEquation : Prop
  initialConditions : Prop
  boundaryConditions : Prop

structure SeismicWavePropagationEvidence (S : SeismicWavePropagationPackage) where
  waveEquationClosed : S.waveEquation
  initialConditionsClosed : S.initialConditions
  boundaryConditionsClosed : S.boundaryConditions

def SeismicWavePropagationClosed (S : SeismicWavePropagationPackage) : Prop :=
  S.waveEquation ∧ S.initialConditions ∧ S.boundaryConditions

theorem seismic_wave_propagation_closed_from_evidence (S : SeismicWavePropagationPackage)
    (E : SeismicWavePropagationEvidence S) : SeismicWavePropagationClosed S := by
  exact And.intro E.waveEquationClosed (And.intro E.initialConditionsClosed E.boundaryConditionsClosed)

end EarthScienceGeophysicsSolidEarthFoundationCanonicalLaneLean
end HautevilleHouse