import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ElementaryProblemsEuclideanGeometriesCanonicalLaneLean.EuclideanAxioms

namespace HautevilleHouse
namespace ElementaryProblemsEuclideanGeometriesCanonicalLaneLean

structure CircleData {E : EuclideanPlane} where
  center : E.Point
  radius : ℝ
  pointsOnCircle : Set E.Point
  circleDefined : Prop

structure CircleTheoremsPackage {E : EuclideanPlane} (C : CircleData E) where
  inscribedAngleTheorem : Prop
  powerOfAPoint : Prop
  tangentSecantTheorem : Prop
  intersectingChordsTheorem : Prop

structure CircleTheoremsEvidence {E : EuclideanPlane} {C : CircleData E} (P : CircleTheoremsPackage C) where
  inscribedAngleTheoremClosed : P.inscribedAngleTheorem
  powerOfAPointClosed : P.powerOfAPoint

def CircleTheoremsClosed {E : EuclideanPlane} {C : CircleData E} (P : CircleTheoremsPackage C) : Prop :=
  P.inscribedAngleTheorem ∧ P.powerOfAPoint

theorem circle_theorems_closed_from_evidence {E : EuclideanPlane} {C : CircleData E}
    (P : CircleTheoremsPackage C) (ev : CircleTheoremsEvidence P) : CircleTheoremsClosed P :=
  And.intro ev.inscribedAngleTheoremClosed ev.powerOfAPointClosed

end ElementaryProblemsEuclideanGeometriesCanonicalLaneLean
end HautevilleHouse