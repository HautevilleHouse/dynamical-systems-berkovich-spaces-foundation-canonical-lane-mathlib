import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesFoundationCanonicalLaneLean

structure BerkovichSpace where
  baseField : Type u
  norm : baseField -> ℝ
  multiplicative : Prop
  nonArchimedean : Prop
  topologyFromVal : Prop

structure BerkovichSpectrum (A : Type u) [CommRing A] where
  multiplicativeSeminorms : Set (MulRingSeminorm A)
  powerMultiplicativity : Prop
  berkovichTopology : Prop

structure AnalyticFunction (X : Type u) [TopologicalSpace X] where
  domain : Set X
  localRepresentation : Type v
  convergentPowerSeries : Prop
  uniformConvergenceOnCompacta : Prop

structure BerkovichCurve (K : Type u) [Field K] [Valued K] where
  analyticCurve : Type v
  smoothnessCondition : Prop
  genusDefined : Prop
  rationalPoints : Type w

end DynamicalSystemsBerkovichSpacesFoundationCanonicalLaneLean
end HautevilleHouse