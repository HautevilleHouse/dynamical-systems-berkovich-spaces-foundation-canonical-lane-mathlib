import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesFoundationCanonicalLaneLean

structure BerkovichMSCClassification where
  dynamicalSystem : BerkovichDynamicalSystem
  mscClass : String
  classificationProof : Prop
  canonicalModel : Prop
  invariantMeasure : Prop

def BerkovichMSCClosed (C : BerkovichMSCClassification) : Prop :=
  C.classificationProof ∧ C.canonicalModel ∧ C.invariantMeasure

end DynamicalSystemsBerkovichSpacesFoundationCanonicalLaneLean
end HautevilleHouse