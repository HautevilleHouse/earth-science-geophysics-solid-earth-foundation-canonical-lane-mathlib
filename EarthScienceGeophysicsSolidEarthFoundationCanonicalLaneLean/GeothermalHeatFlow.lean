import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthFoundationCanonicalLaneLean

structure GeothermalHeatFlowPackage where
  heatSource : Type u
  thermalConductivity : Type v
  heatEquation : Prop
  crustalHeatFlow : Prop
  mantleTemperature : Prop
  radiogenicHeat : Prop

structure GeothermalHeatFlowEvidence (G : GeothermalHeatFlowPackage) where
  heatEquationClosed : G.heatEquation
  crustalHeatFlowClosed : G.crustalHeatFlow
  mantleTemperatureClosed : G.mantleTemperature
  radiogenicHeatClosed : G.radiogenicHeat

def GeothermalHeatFlowClosed (G : GeothermalHeatFlowPackage) : Prop :=
  G.heatEquation ∧ G.crustalHeatFlow ∧ G.mantleTemperature ∧ G.radiogenicHeat

theorem geothermal_heat_flow_closed_from_evidence
    (G : GeothermalHeatFlowPackage) (Ev : GeothermalHeatFlowEvidence G) :
    GeothermalHeatFlowClosed G := by
  exact And.intro Ev.heatEquationClosed (And.intro Ev.crustalHeatFlowClosed (And.intro Ev.mantleTemperatureClosed Ev.radiogenicHeatClosed))

end EarthScienceGeophysicsSolidEarthFoundationCanonicalLaneLean
end HautevilleHouse