import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElementaryProblemsEuclideanGeometriesCanonicalLaneLean

structure TriangleGeometryPackage where
  sideLengths : Prop
  angleSums : Prop
  congruenceCriteria : Prop
  similarityCriteria : Prop
  pythagoreanTheorem : Prop

structure TriangleGeometryEvidence (T : TriangleGeometryPackage) where
  sideLengthsClosed : T.sideLengths
  angleSumsClosed : T.angleSums
  congruenceCriteriaClosed : T.congruenceCriteria
  similarityCriteriaClosed : T.similarityCriteria
  pythagoreanTheoremClosed : T.pythagoreanTheorem

def TriangleGeometryClosed (T : TriangleGeometryPackage) : Prop :=
  T.sideLengths ∧ T.angleSums ∧ T.congruenceCriteria ∧ T.similarityCriteria ∧ T.pythagoreanTheorem

theorem triangle_geometry_closed_from_evidence (T : TriangleGeometryPackage)
    (Ev : TriangleGeometryEvidence T) : TriangleGeometryClosed T := by
  exact And.intro Ev.sideLengthsClosed
    (And.intro Ev.angleSumsClosed
      (And.intro Ev.congruenceCriteriaClosed
        (And.intro Ev.similarityCriteriaClosed Ev.pythagoreanTheoremClosed)))

end ElementaryProblemsEuclideanGeometriesCanonicalLaneLean
end HautevilleHouse