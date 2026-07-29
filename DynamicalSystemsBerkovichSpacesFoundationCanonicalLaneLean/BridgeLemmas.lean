import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesFoundationCanonicalLaneLean

def bridgeClosed (A : BerkovichAdmissibleClass) : Prop :=
  BerkovichSpaceClosed A.object

theorem bridge_from_admissible_class (A : BerkovichAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DynamicalSystemsBerkovichSpacesFoundationCanonicalLaneLean
end HautevilleHouse