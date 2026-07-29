import canonicalLaneMathlib.AdmissibleClass
import DynamicalSystemsBerkovichSpacesFoundationCanonicalLaneLean.BridgeLemmas
import DynamicalSystemsBerkovichSpacesFoundationCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesFoundationCanonicalLaneLean

def ConstrainedBerkovichClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_berkovich_endgame (A : AdmissibleClass) :
    ConstrainedBerkovichClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicalSystemsBerkovichSpacesFoundationCanonicalLaneLean
end HautevilleHouse