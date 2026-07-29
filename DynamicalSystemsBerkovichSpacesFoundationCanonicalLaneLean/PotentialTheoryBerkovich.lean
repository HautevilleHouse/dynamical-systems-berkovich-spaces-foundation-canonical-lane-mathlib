import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesFoundationCanonicalLaneLean

structure PotentialTheoryBerkovich {X : BerkovichProjectiveLine}
    (φ : DynamicalSystemBerkovich X) where
  laplaceOperator : Type u
  energyFunctional : Prop
  equilibriumMeasure : Prop
  capacity : Prop
  greenFunction : Prop

structure PotentialTheoryBerkovichEvidence
    {X : BerkovichProjectiveLine} {φ : DynamicalSystemBerkovich X}
    (P : PotentialTheoryBerkovich φ) where
  energyFunctionalClosed : P.energyFunctional
  equilibriumMeasureClosed : P.equilibriumMeasure
  capacityClosed : P.capacity
  greenFunctionClosed : P.greenFunction

def PotentialTheoryBerkovichClosed
    {X : BerkovichProjectiveLine} {φ : DynamicalSystemBerkovich X}
    (P : PotentialTheoryBerkovich φ) : Prop :=
  P.energyFunctional ∧ P.equilibriumMeasure ∧
  P.capacity ∧ P.greenFunction

theorem potential_theory_berkovich_closed_from_evidence
    {X : BerkovichProjectiveLine} {φ : DynamicalSystemBerkovich X}
    (P : PotentialTheoryBerkovich φ) (E : PotentialTheoryBerkovichEvidence P) :
    PotentialTheoryBerkovichClosed P := by
  exact And.intro E.energyFunctionalClosed
    (And.intro E.equilibriumMeasureClosed
      (And.intro E.capacityClosed E.greenFunctionClosed))

end DynamicalSystemsBerkovichSpacesFoundationCanonicalLaneLean
end HautevilleHouse