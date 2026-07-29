import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesFoundationCanonicalLaneLean

structure BerkovichJuliaSet {X : BerkovichProjectiveLine}
    (φ : DynamicalSystemBerkovich X) where
  repellingPeriodicPointsClosure : Prop
  backwardIterationClosure : Prop
  invariance : Prop
  exceptionalSet : Prop
  fatouSetDefined : Prop

structure BerkovichJuliaSetEvidence
    {X : BerkovichProjectiveLine} {φ : DynamicalSystemBerkovich X}
    (J : BerkovichJuliaSet φ) where
  repellingPeriodicPointsClosureClosed : J.repellingPeriodicPointsClosure
  backwardIterationClosureClosed : J.backwardIterationClosure
  invarianceClosed : J.invariance
  exceptionalSetClosed : J.exceptionalSet
  fatouSetDefinedClosed : J.fatouSetDefined

def BerkovichJuliaSetClosed
    {X : BerkovichProjectiveLine} {φ : DynamicalSystemBerkovich X}
    (J : BerkovichJuliaSet φ) : Prop :=
  J.repellingPeriodicPointsClosure ∧ J.backwardIterationClosure ∧
  J.invariance ∧ J.exceptionalSet ∧ J.fatouSetDefined

theorem berkovich_julia_set_closed_from_evidence
    {X : BerkovichProjectiveLine} {φ : DynamicalSystemBerkovich X}
    (J : BerkovichJuliaSet φ) (E : BerkovichJuliaSetEvidence J) :
    BerkovichJuliaSetClosed J := by
  exact And.intro E.repellingPeriodicPointsClosureClosed
    (And.intro E.backwardIterationClosureClosed
      (And.intro E.invarianceClosed
        (And.intro E.exceptionalSetClosed E.fatouSetDefinedClosed)))

end DynamicalSystemsBerkovichSpacesFoundationCanonicalLaneLean
end HautevilleHouse