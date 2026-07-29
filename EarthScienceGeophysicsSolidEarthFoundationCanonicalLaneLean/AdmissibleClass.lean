import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthFoundationCanonicalLaneLean

structure SolidEarthAdmittedObject where
  crustObject : AdmittedObject
  mantleObject : AdmittedObject
  coreObject : AdmittedObject

structure EndpointSatisfied where
  seismicVelocityModel : Prop
  densityProfile : Prop
  tectonicBoundary : Prop

structure RemainderRecorded where
  residualGravity : Prop
  thermalAnomaly : Prop

structure AdmissibleClass where
  object : SolidEarthAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EarthScienceGeophysicsSolidEarthFoundationCanonicalLaneLean
end HautevilleHouse