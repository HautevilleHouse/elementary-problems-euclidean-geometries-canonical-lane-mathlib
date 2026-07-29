import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ElementaryProblemsEuclideanGeometriesCanonicalLaneLean.EuclideanAxioms

namespace HautevilleHouse
namespace ElementaryProblemsEuclideanGeometriesCanonicalLaneLean

structure TriangleData {E : EuclideanPlane} where
  a b c : E.Point
  nonCollinear : ¬ (E.between a b c ∨ E.between b c a ∨ E.between c a b)

structure TriangleTheoremsPackage {E : EuclideanPlane} (T : TriangleData E) where
  triangleInequality : Prop
  pythagoreanTheorem : Prop
  congruenceCriteria : Prop
  lawOfSines : Prop
  lawOfCosines : Prop

structure TriangleTheoremsEvidence {E : EuclideanPlane} {T : TriangleData E} (P : TriangleTheoremsPackage T) where
  triangleInequalityClosed : P.triangleInequality
  pythagoreanTheoremClosed : P.pythagoreanTheorem
  congruenceCriteriaClosed : P.congruenceCriteria

def TriangleTheoremsClosed {E : EuclideanPlane} {T : TriangleData E} (P : TriangleTheoremsPackage T) : Prop :=
  P.triangleInequality ∧ P.pythagoreanTheorem ∧ P.congruenceCriteria

theorem triangle_theorems_closed_from_evidence {E : EuclideanPlane} {T : TriangleData E}
    (P : TriangleTheoremsPackage T) (ev : TriangleTheoremsEvidence P) : TriangleTheoremsClosed P :=
  And.intro ev.triangleInequalityClosed (And.intro ev.pythagoreanTheoremClosed ev.congruenceCriteriaClosed)

end ElementaryProblemsEuclideanGeometriesCanonicalLaneLean
end HautevilleHouse