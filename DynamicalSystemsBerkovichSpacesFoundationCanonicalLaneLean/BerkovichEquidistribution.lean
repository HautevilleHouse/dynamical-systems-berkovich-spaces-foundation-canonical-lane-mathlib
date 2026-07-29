import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsBerkovichSpacesFoundationCanonicalLaneLean.BerkovichDynamicalSystem
import HautevilleHouse.DynamicalSystemsBerkovichSpacesFoundationCanonicalLaneLean.BerkovichCanonicalPotential

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesFoundationCanonicalLaneLean

structure BerkovichEquidistribution {k : Type} [NormedField k] {B : BerkovichAffineSpace k} (D : BerkovichDynamicalSystem B) (P : BerkovichCanonicalPotential B) where
  equilibriumMeasure : Type
  pushforwardCompatibility : (s : ℕ) → Prop
  convergenceStatement : Prop
  variationalPrinciple : Prop
  pushforwardCompatibilityTerm (s : ℕ) : pushforwardCompatibility s
  convergenceStatementTerm : convergenceStatement
  variationalPrincipleTerm : variationalPrinciple

structure BerkovichEquidistributionEvidence {k : Type} [NormedField k] {B : BerkovichAffineSpace k} {D : BerkovichDynamicalSystem B} {P : BerkovichCanonicalPotential B} (E : BerkovichEquidistribution D P) where
  pushforwardCompatibilityClosed (s : ℕ) : E.pushforwardCompatibility s
  convergenceStatementClosed : E.convergenceStatement
  variationalPrincipleClosed : E.variationalPrinciple

def BerkovichEquidistributionClosed {k : Type} [NormedField k] {B : BerkovichAffineSpace k} {D : BerkovichDynamicalSystem B} {P : BerkovichCanonicalPotential B} (E : BerkovichEquidistribution D P) : Prop :=
  (∀ s : ℕ, E.pushforwardCompatibility s) ∧ E.convergenceStatement ∧ E.variationalPrinciple

theorem berkovich_equidistribution_closed_from_evidence {k : Type} [NormedField k] {B : BerkovichAffineSpace k} {D : BerkovichDynamicalSystem B} {P : BerkovichCanonicalPotential B} (E : BerkovichEquidistribution D P) (Ev : BerkovichEquidistributionEvidence E) : BerkovichEquidistributionClosed E := by
  refine And.intro ?_ (And.intro Ev.convergenceStatementClosed Ev.variationalPrincipleClosed)
  intro s
  exact Ev.pushforwardCompatibilityClosed s

end DynamicalSystemsBerkovichSpacesFoundationCanonicalLaneLean
end HautevilleHouse