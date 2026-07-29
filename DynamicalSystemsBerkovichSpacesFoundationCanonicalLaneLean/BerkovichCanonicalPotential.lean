import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsBerkovichSpacesFoundationCanonicalLaneLean.BerkovichAffineSpace

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesFoundationCanonicalLaneLean

structure BerkovichCanonicalPotential {k : Type} [NormedField k] (B : BerkovichAffineSpace k) where
  potentialFunction : B.berkovichSpectrum → ℝ
  adelicContinuity : Prop
  semipositivity : Prop
  energyFunctional : (B.berkovichSpectrum → ℝ) → ℝ
  monotonicityUnderIteration : (s : ℕ) → Prop
  adelicContinuityTerm : adelicContinuity
  semipositivityTerm : semipositivity
  monotonicityUnderIterationTerm (s : ℕ) : monotonicityUnderIteration s

structure BerkovichCanonicalPotentialEvidence {k : Type} [NormedField k] {B : BerkovichAffineSpace k} (P : BerkovichCanonicalPotential B) where
  adelicContinuityClosed : P.adelicContinuity
  semipositivityClosed : P.semipositivity
  monotonicityUnderIterationClosed (s : ℕ) : P.monotonicityUnderIteration s

def BerkovichCanonicalPotentialClosed {k : Type} [NormedField k] {B : BerkovichAffineSpace k} (P : BerkovichCanonicalPotential B) : Prop :=
  P.adelicContinuity ∧ P.semipositivity ∧ (∀ s : ℕ, P.monotonicityUnderIteration s)

theorem berkovich_canonical_potential_closed_from_evidence {k : Type} [NormedField k] {B : BerkovichAffineSpace k} (P : BerkovichCanonicalPotential B) (E : BerkovichCanonicalPotentialEvidence P) : BerkovichCanonicalPotentialClosed P := by
  refine And.intro E.adelicContinuityClosed (And.intro E.semipositivityClosed ?_)
  intro s
  exact E.monotonicityUnderIterationClosed s

end DynamicalSystemsBerkovichSpacesFoundationCanonicalLaneLean
end HautevilleHouse