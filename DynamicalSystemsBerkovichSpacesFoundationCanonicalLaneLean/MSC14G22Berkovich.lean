import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesFoundationCanonicalLaneLean

structure MSC14G22BerkovichObject where
  field : Type u
  fieldComplete : Prop
  fieldAlgebraicallyClosed : Prop
  berkovichAnalytification : Prop
  analyticCurve : Prop
  JacobianFibration : Prop
  potentialTheory : Prop
  canonicalClass : Prop
  stablyBerkovichClosed : Prop
  conclusion : stablyBerkovichClosed

def MSC14G22BerkovichClosed (M : MSC14G22BerkovichObject) : Prop :=
  M.stablyBerkovichClosed

end DynamicalSystemsBerkovichSpacesFoundationCanonicalLaneLean
end HautevilleHouse