import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsBerkovichSpacesFoundationCanonicalLaneLean.BerkovichDynamicalSystem

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesFoundationCanonicalLaneLean

structure BerkovichLyapunovExponents {k : Type} [NormedField k] {B : BerkovichAffineSpace k} (D : BerkovichDynamicalSystem B) where
  lyapunovExponent : ℕ → ℝ
  boundedness (n : ℕ) : Prop
  growthRate : ℕ → ℝ
  relationToDegree : D.degree ≠ 0 → Prop
  boundednessTerm (n : ℕ) : boundedness n
  growthRateTerm (n : ℕ) : growthRate n = (lyapunovExponent n)
  relationToDegreeTerm (h : D.degree ≠ 0) : relationToDegree h

structure BerkovichLyapunovExponentsEvidence {k : Type} [NormedField k] {B : BerkovichAffineSpace k} {D : BerkovichDynamicalSystem B} (L : BerkovichLyapunovExponents D) where
  boundednessClosed (n : ℕ) : L.boundedness n
  growthRateClosed (n : ℕ) : L.growthRate n = (L.lyapunovExponent n)
  relationToDegreeClosed (h : D.degree ≠ 0) : L.relationToDegree h

def BerkovichLyapunovExponentsClosed {k : Type} [NormedField k] {B : BerkovichAffineSpace k} {D : BerkovichDynamicalSystem B} (L : BerkovichLyapunovExponents D) : Prop :=
  (∀ n : ℕ, L.boundedness n) ∧ (∀ n : ℕ, L.growthRate n = L.lyapunovExponent n) ∧ (∀ h : D.degree ≠ 0, L.relationToDegree h)

theorem berkovich_lyapunov_exponents_closed_from_evidence {k : Type} [NormedField k] {B : BerkovichAffineSpace k} {D : BerkovichDynamicalSystem B} (L : BerkovichLyapunovExponents D) (Ev : BerkovichLyapunovExponentsEvidence L) : BerkovichLyapunovExponentsClosed L := by
  refine And.intro (fun n => Ev.boundednessClosed n) (And.intro (fun n => Ev.growthRateClosed n) (fun h => Ev.relationToDegreeClosed h))

end DynamicalSystemsBerkovichSpacesFoundationCanonicalLaneLean
end HautevilleHouse