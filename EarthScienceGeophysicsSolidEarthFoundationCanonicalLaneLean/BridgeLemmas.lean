import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthFoundationCanonicalLaneLean

structure BridgeClosed (A : AdmissibleClass) : Prop where
  bridgeProof : A.endpointSatisfied

theorem bridge_from_admissible_class (A : AdmissibleClass) (h : A.endpointSatisfied) : BridgeClosed A :=
  { bridgeProof := h }

noncomputable def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied

end EarthScienceGeophysicsSolidEarthFoundationCanonicalLaneLean
end HautevilleHouse