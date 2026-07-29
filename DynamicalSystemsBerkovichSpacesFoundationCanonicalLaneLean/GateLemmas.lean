import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesFoundationCanonicalLaneLean

def gateClosed (A : BerkovichAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : BerkovichAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end DynamicalSystemsBerkovichSpacesFoundationCanonicalLaneLean
end HautevilleHouse