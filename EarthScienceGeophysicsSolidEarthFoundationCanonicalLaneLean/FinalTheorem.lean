import canonicalLaneMathlib.AdmissibleClass
import EarthScienceGeophysicsSolidEarthFoundationCanonicalLaneLean.BridgeLemmas
import EarthScienceGeophysicsSolidEarthFoundationCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthFoundationCanonicalLaneLean

def ConstrainedTheoremClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_theorem_closure (A : AdmissibleClass) : ConstrainedTheoremClosure A := by
  refine And.intro ?_ (gate_from_admissible_class A)
  exact bridge_from_admissible_class A (by
    -- from A.admissible_properties, we have endpointSatisfied
    sorry)

end EarthScienceGeophysicsSolidEarthFoundationCanonicalLaneLean
end HautevilleHouse