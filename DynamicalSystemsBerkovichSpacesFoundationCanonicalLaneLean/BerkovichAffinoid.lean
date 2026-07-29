import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesFoundationCanonicalLaneLean

structure BerkovichAffinoidSpace where
  field : Type u
  seminormFamily : Type v
  completion : Type w
  multiplicativeSeminorms : Prop
  completionMakesRing : Prop
  powerMultiplicative : Prop
  spectralNorm : Prop

structure BerkovichAffinoidEvidence (B : BerkovichAffinoidSpace) where
  multiplicativeSeminormsClosed : B.multiplicativeSeminorms
  completionMakesRingClosed : B.completionMakesRing
  powerMultiplicativeClosed : B.powerMultiplicative
  spectralNormClosed : B.spectralNorm

def BerkovichAffinoidClosed (B : BerkovichAffinoidSpace) : Prop :=
  B.multiplicativeSeminorms ∧ B.completionMakesRing ∧
  B.powerMultiplicative ∧ B.spectralNorm

theorem berkovich_affinoid_closed_from_evidence (B : BerkovichAffinoidSpace)
    (E : BerkovichAffinoidEvidence B) : BerkovichAffinoidClosed B := by
  exact And.intro E.multiplicativeSeminormsClosed
    (And.intro E.completionMakesRingClosed
      (And.intro E.powerMultiplicativeClosed E.spectralNormClosed))

end DynamicalSystemsBerkovichSpacesFoundationCanonicalLaneLean
end HautevilleHouse