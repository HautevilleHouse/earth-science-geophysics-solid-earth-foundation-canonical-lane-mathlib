import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthFoundationCanonicalLaneLean

structure CrustalDeformationStressPackage where
  stressTensor : Type u
  strainRate : Type v
  faultFriction : Type w
  elasticPlasticRheology : Prop
  earthquakeCycleModel : Prop
  interseismicCoupling : Prop

structure CrustalDeformationStressEvidence (C : CrustalDeformationStressPackage) where
  elasticPlasticRheologyClosed : C.elasticPlasticRheology
  earthquakeCycleModelClosed : C.earthquakeCycleModel
  interseismicCouplingClosed : C.interseismicCoupling

def CrustalDeformationStressClosed (C : CrustalDeformationStressPackage) : Prop :=
  C.elasticPlasticRheology ∧ C.earthquakeCycleModel ∧ C.interseismicCoupling

theorem crustal_deformation_stress_closed_from_evidence
    (C : CrustalDeformationStressPackage) (E : CrustalDeformationStressEvidence C) :
    CrustalDeformationStressClosed C := by
  exact And.intro E.elasticPlasticRheologyClosed (And.intro E.earthquakeCycleModelClosed E.interseismicCouplingClosed)

end EarthScienceGeophysicsSolidEarthFoundationCanonicalLaneLean
end HautevilleHouse