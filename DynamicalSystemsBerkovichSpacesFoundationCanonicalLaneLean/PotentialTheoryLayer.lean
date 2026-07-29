import canonicalLaneMathlib.PotentialTheory

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesFoundationCanonicalLaneLean

structure PotentialTheoryLayer where
  potentialFunction : ℕ → ℝ
  capacity : ℝ
  energy : ℝ
  equilibriumMeasure : Set ℝ

def PotentialTheoryLayerClosed (P : PotentialTheoryLayer) : Prop :=
  P.capacity > 0 ∧ P.energy < ∞

structure PotentialTheoryEvidence (P : PotentialTheoryLayer) where
  capacityClosed : P.capacity > 0
  energyClosed : P.energy < ∞

theorem potential_theory_closed_from_evidence (P : PotentialTheoryLayer)
    (E : PotentialTheoryEvidence P) : PotentialTheoryLayerClosed P := by
  exact And.intro E.capacityClosed E.energyClosed

end DynamicalSystemsBerkovichSpacesFoundationCanonicalLaneLean
end HautevilleHouse