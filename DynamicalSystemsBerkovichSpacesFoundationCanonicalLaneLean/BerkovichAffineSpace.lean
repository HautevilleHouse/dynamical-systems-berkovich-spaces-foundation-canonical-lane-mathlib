import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesFoundationCanonicalLaneLean

structure BerkovichAffineSpace (k : Type) [NormedField k] where
  baseField : k
  affinoidAlgebra : Type
  seminormFamily : affinoidAlgebra → (k → ℝ)
  completion : Type
  berkovichSpectrum : Type
  spectrumTopology : TopologicalSpace berkovichSpectrum
  structuralSheaf : berkovichSpectrum → Type
  isAffinoid : Prop
  affinoidBasis : Prop
  gaussNormDefinition : Prop
  isAffinoidTerm : isAffinoid
  affinoidBasisTerm : affinoidBasis
  gaussNormDefinitionTerm : gaussNormDefinition

structure BerkovichAffineSpaceEvidence {k : Type} [NormedField k] (B : BerkovichAffineSpace k) where
  isAffinoidClosed : B.isAffinoid
  affinoidBasisClosed : B.affinoidBasis
  gaussNormDefinitionClosed : B.gaussNormDefinition

def BerkovichAffineSpaceClosed {k : Type} [NormedField k] (B : BerkovichAffineSpace k) : Prop :=
  B.isAffinoid ∧ B.affinoidBasis ∧ B.gaussNormDefinition

theorem berkovich_affine_space_closed_from_evidence {k : Type} [NormedField k] (B : BerkovichAffineSpace k) (E : BerkovichAffineSpaceEvidence B) : BerkovichAffineSpaceClosed B := by
  exact And.intro E.isAffinoidClosed (And.intro E.affinoidBasisClosed E.gaussNormDefinitionClosed)

end DynamicalSystemsBerkovichSpacesFoundationCanonicalLaneLean
end HautevilleHouse