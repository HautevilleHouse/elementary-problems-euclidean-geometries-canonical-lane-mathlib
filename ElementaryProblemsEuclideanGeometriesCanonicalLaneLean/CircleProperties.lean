import ElementaryProblemsEuclideanGeometriesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElementaryProblemsEuclideanGeometriesCanonicalLaneLean

structure CirclePropertiesPackage (A : AdmissibleClass) where
  centralAngleEqualArc : Prop
  chordPerpendicularBisector : Prop
  tangentRadiusPerpendicular : Prop
  inscribedAngleHalf: Prop
  powerOfPoint : Prop

structure CirclePropertiesEvidence (A : AdmissibleClass) (P : CirclePropertiesPackage A) where
  centralAngleEqualArcClosed : P.centralAngleEqualArc
  chordPerpendicularBisectorClosed : P.chordPerpendicularBisector
  tangentRadiusPerpendicularClosed : P.tangentRadiusPerpendicular
  inscribedAngleHalfClosed : P.inscribedAngleHalf
  powerOfPointClosed : P.powerOfPoint

def CirclePropertiesClosed (A : AdmissibleClass) (P : CirclePropertiesPackage A) : Prop :=
  P.centralAngleEqualArc ∧ P.chordPerpendicularBisector ∧ P.tangentRadiusPerpendicular ∧ P.inscribedAngleHalf ∧ P.powerOfPoint

theorem circle_properties_closed_from_evidence (A : AdmissibleClass) (P : CirclePropertiesPackage A) (E : CirclePropertiesEvidence A P) :
    CirclePropertiesClosed A P := by
  exact And.intro E.centralAngleEqualArcClosed (And.intro E.chordPerpendicularBisectorClosed (And.intro E.tangentRadiusPerpendicularClosed (And.intro E.inscribedAngleHalfClosed E.powerOfPointClosed)))

end ElementaryProblemsEuclideanGeometriesCanonicalLaneLean
end HautevilleHouse