import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesFoundationCanonicalLaneLean

structure DynamicalSystemBerkovich (X : BerkovichProjectiveLine) where
  map : X → X
  rationalFunction : Prop
  degree : ℕ
  iteratesDefined : Prop
  criticalPointsAccounted : Prop
  postCriticalBehavior : Prop

structure DynamicalSystemBerkovichEvidence
    {X : BerkovichProjectiveLine} (φ : DynamicalSystemBerkovich X) where
  rationalFunctionClosed : φ.rationalFunction
  iteratesDefinedClosed : φ.iteratesDefined
  criticalPointsAccountedClosed : φ.criticalPointsAccounted
  postCriticalBehaviorClosed : φ.postCriticalBehavior

def DynamicalSystemBerkovichClosed
    {X : BerkovichProjectiveLine} (φ : DynamicalSystemBerkovich X) : Prop :=
  φ.rationalFunction ∧ φ.iteratesDefined ∧
  φ.criticalPointsAccounted ∧ φ.postCriticalBehavior

theorem dynamical_system_berkovich_closed_from_evidence
    {X : BerkovichProjectiveLine} (φ : DynamicalSystemBerkovich X)
    (E : DynamicalSystemBerkovichEvidence φ) : DynamicalSystemBerkovichClosed φ := by
  exact And.intro E.rationalFunctionClosed
    (And.intro E.iteratesDefinedClosed
      (And.intro E.criticalPointsAccountedClosed E.postCriticalBehaviorClosed))

end DynamicalSystemsBerkovichSpacesFoundationCanonicalLaneLean
end HautevilleHouse