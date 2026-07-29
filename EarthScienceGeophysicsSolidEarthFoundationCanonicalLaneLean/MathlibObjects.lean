import EarthScienceGeophysicsSolidEarthFoundationCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure EarthSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure EarthAdmittedObject where
  space : EarthSpace
  threeLayerStructure : Prop
  innerCoreSolid : Prop
  outerCoreFluid : Prop
  mantleViscous : Prop
  crustBrittle : Prop
  lithosphereElastic : Prop
  conclusion : lithosphereElastic

structure EarthEndgameState where
  object : EarthAdmittedObject

def EarthWitnessClosed (O : EarthAdmittedObject) : Prop :=
  O.lithosphereElastic

end EarthScienceGeophysicsSolidEarthFoundationCanonicalLaneLean
end HautevilleHouse