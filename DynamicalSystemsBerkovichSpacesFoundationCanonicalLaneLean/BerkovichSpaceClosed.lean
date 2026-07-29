import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesFoundationCanonicalLaneLean

structure BerkovichSpaceObject where
  underlyingSet : Type u
  topology : TopologicalSpace underlyingSet
  affinoidCover : Type v
  gluingData : Prop
  separated : Prop
  boundaryFunctor : Prop
  rigidAnalytic : Prop
  berkovichAnalytic : Prop
  conclusion : berkovichAnalytic

def BerkovichSpaceClosed (B : BerkovichSpaceObject) : Prop :=
  B.berkovichAnalytic

end DynamicalSystemsBerkovichSpacesFoundationCanonicalLaneLean
end HautevilleHouse