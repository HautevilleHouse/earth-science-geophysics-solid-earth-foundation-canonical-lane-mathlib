import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthFoundationCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  solidEarthConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "earth-science-geophysics-solid-earth-foundation-canonical-lane",
    theoremName := "Solid Earth Foundation Geophysical Integrity Theorem",
    theoremObject := "Canonical closure of solid Earth geophysical models under admissible class constraints",
    classicalBoundary := "The full classical geophysical theory remains unformalized; only the admissible-class bridge and gate are closed.",
    solidEarthConstrainedStatement := "Under the admissible class, all solid Earth geophysical models satisfy the closure conditions defined by bridgeClosed and gateClosed.",
    certificateLane := "solid_earth_constrained",
    carriedRemainder := "Classical geophysical axioms and empirical validation are carried as an open boundary."
  }

end EarthScienceGeophysicsSolidEarthFoundationCanonicalLaneLean
end HautevilleHouse