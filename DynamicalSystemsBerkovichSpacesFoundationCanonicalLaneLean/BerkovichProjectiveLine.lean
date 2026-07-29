import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBerkovichSpacesFoundationCanonicalLaneLean

structure BerkovichProjectiveLine where
  affinoidCover : Type u
  gluingData : Prop
  analyticStructure : Prop
  compactsCompatible : Prop
  hausdorff : Prop

structure BerkovichProjectiveLineEvidence (P : BerkovichProjectiveLine) where
  affinoidCoverClosed : P.affinoidCover
  gluingDataClosed : P.gluingData
  analyticStructureClosed : P.analyticStructure
  compactsCompatibleClosed : P.compactsCompatible
  hausdorffClosed : P.hausdorff

def BerkovichProjectiveLineClosed (P : BerkovichProjectiveLine) : Prop :=
  P.affinoidCover ∧ P.gluingData ∧ P.analyticStructure ∧
  P.compactsCompatible ∧ P.hausdorff

theorem berkovich_projective_line_closed_from_evidence (P : BerkovichProjectiveLine)
    (E : BerkovichProjectiveLineEvidence P) : BerkovichProjectiveLineClosed P := by
  exact And.intro E.affinoidCoverClosed
    (And.intro E.gluingDataClosed
      (And.intro E.analyticStructureClosed
        (And.intro E.compactsCompatibleClosed E.hausdorffClosed)))

end DynamicalSystemsBerkovichSpacesFoundationCanonicalLaneLean
end HautevilleHouse