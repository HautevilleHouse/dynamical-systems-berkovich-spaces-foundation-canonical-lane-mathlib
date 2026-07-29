import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesFoundationCanonicalLaneLean

structure BerkovichSpectrum (A : BerkovichAffinoidAlgebra) where
  points : Type u
  topology : TopologicalSpace points
  hullKernel : Prop
  reductionMap : Type v
  analytification : Prop

def BerkovichSpectrumClosed {A : BerkovichAffinoidAlgebra} (S : BerkovichSpectrum A) : Prop :=
  S.hullKernel ∧ S.analytification

end DynamicalSystemsBerkovichSpacesFoundationCanonicalLaneLean
end HautevilleHouse