import canonicalLaneMathlib.Orbit

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesFoundationCanonicalLaneLean

structure DynamicalOrbitStructure {X : Type} [TopologicalSpace X] where
  f : X → X
  point : X
  orbit : Set X
  dense : Prop
  periodic : Prop

def DynamicalOrbitStructureClosed {X : Type} [TopologicalSpace X] (O : DynamicalOrbitStructure X) : Prop :=
  O.dense ∨ O.periodic

end DynamicalSystemsBerkovichSpacesFoundationCanonicalLaneLean
end HautevilleHouse