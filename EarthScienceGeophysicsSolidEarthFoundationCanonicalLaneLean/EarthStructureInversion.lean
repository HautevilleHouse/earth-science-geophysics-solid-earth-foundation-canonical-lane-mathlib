import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthFoundationCanonicalLaneLean

structure JointInversionFramework where
  seismicVelocityModel : Type
  gravityAnomalyModel : Type
  magnetotelluricModel : Type
  crossGradientConstraint : Prop
  resolutionAnalysis : Prop
  crossGradientConstraintTerm : crossGradientConstraint
  resolutionAnalysisTerm : resolutionAnalysis

structure JointInversionEvidence (J : JointInversionFramework) where
  crossGradientConstraintClosed : J.crossGradientConstraint
  resolutionAnalysisClosed : J.resolutionAnalysis

def JointInversionClosed (J : JointInversionFramework) : Prop :=
  J.crossGradientConstraint ∧ J.resolutionAnalysis

theorem joint_inversion_closed_from_evidence (J : JointInversionFramework) (E : JointInversionEvidence J) :
    JointInversionClosed J := by
  exact And.intro E.crossGradientConstraintClosed E.resolutionAnalysisClosed

end EarthScienceGeophysicsSolidEarthFoundationCanonicalLaneLean
end HautevilleHouse