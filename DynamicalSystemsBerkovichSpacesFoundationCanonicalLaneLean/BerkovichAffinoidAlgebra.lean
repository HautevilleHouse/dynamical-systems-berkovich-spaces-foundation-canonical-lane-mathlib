import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesFoundationCanonicalLaneLean

structure BerkovichAffinoidAlgebra where
  baseField : Type u
  norm : baseField → ℝ
  isComplete : Prop
  affinoidAlgebra : Type v
  banachAlgebraStructure : Prop
  spectralNorm : Prop
  maxSpec : Type w

def BerkovichAffinoidAlgebraClosed (A : BerkovichAffinoidAlgebra) : Prop :=
  A.banachAlgebraStructure ∧ A.spectralNorm

end DynamicalSystemsBerkovichSpacesFoundationCanonicalLaneLean
end HautevilleHouse