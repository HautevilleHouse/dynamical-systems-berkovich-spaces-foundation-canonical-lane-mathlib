import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesFoundationCanonicalLaneLean

structure BerkovichDynamicalSystem (X : BerkovichSpectrum) where
  map : X.points → X.points
  continuity : Prop
  iteratesDefined : Prop
  periodicPoints : Prop
  repellingOrbits : Prop
  berkovichJuliaSet : Prop
  measureOfMaximalEntropy : Prop

def BerkovichDynamicalSystemClosed {X : BerkovichSpectrum} (D : BerkovichDynamicalSystem X) : Prop :=
  D.continuity ∧ D.iteratesDefined ∧ D.berkovichJuliaSet

end DynamicalSystemsBerkovichSpacesFoundationCanonicalLaneLean
end HautevilleHouse