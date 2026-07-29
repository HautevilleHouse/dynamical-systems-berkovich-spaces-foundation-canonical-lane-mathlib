import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesFoundationCanonicalLaneLean

structure BerkovichDynamicalSystem where
  space : BerkovichSpace
  map : BerkovichSpace -> BerkovichSpace
  analytic : Prop
  degree : ℕ
  criticalPoints : Set BerkovichSpace

structure Iteration (Φ : BerkovichDynamicalSystem) where
  nthIterate : ℕ -> (BerkovichSpace -> BerkovichSpace)
  functoriality : Prop

structure JuliaSet (Φ : BerkovichDynamicalSystem) where
  repellingPeriodicPoints : Set BerkovichSpace
  closure : Set BerkovichSpace
  invariance : Prop

structure FatouSet (Φ : BerkovichDynamicalSystem) where
  normality : Prop
  wanderingDomain : Prop
  classification : Prop

end DynamicalSystemsBerkovichSpacesFoundationCanonicalLaneLean
end HautevilleHouse