import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthFoundationCanonicalLaneLean

structure MantleConvectionNumericalModel where
  viscosityField : Type
  thermalBoundaryLayer : Type
  rayleighNumber : Nat
  convectionCellPattern : Prop
  surfaceHeatFlowMatched : Prop
  convectionCellPatternTerm : convectionCellPattern
  surfaceHeatFlowMatchedTerm : surfaceHeatFlowMatched

structure MantleConvectionEvidence (M : MantleConvectionNumericalModel) where
  convectionCellPatternClosed : M.convectionCellPattern
  surfaceHeatFlowMatchedClosed : M.surfaceHeatFlowMatched

def MantleConvectionClosed (M : MantleConvectionNumericalModel) : Prop :=
  M.convectionCellPattern ∧ M.surfaceHeatFlowMatched

theorem mantle_convection_closed_from_evidence (M : MantleConvectionNumericalModel) (E : MantleConvectionEvidence M) :
    MantleConvectionClosed M := by
  exact And.intro E.convectionCellPatternClosed E.surfaceHeatFlowMatchedClosed

end EarthScienceGeophysicsSolidEarthFoundationCanonicalLaneLean
end HautevilleHouse