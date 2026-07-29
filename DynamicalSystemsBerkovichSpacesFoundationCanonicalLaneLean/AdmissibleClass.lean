import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesFoundationCanonicalLaneLean

structure BerkovichAdmissibleClass where
  object : BerkovichSpaceObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def berkovichAdmittedClosure (A : BerkovichAdmissibleClass) : Prop :=
  BerkovichSpaceClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DynamicalSystemsBerkovichSpacesFoundationCanonicalLaneLean
end HautevilleHouse