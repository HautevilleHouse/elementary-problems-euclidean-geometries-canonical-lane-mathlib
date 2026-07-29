import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ElementaryProblemsEuclideanGeometriesCanonicalLaneLean.EuclideanAxioms

namespace HautevilleHouse
namespace ElementaryProblemsEuclideanGeometriesCanonicalLaneLean

structure ClassicalProblem where
  name : String
  statement : Prop
  solvableWithCompassAndStraightedge : Prop

structure ClassicalProblemsPackage (E : EuclideanPlane) where
  doublingTheCube : ClassicalProblem
  trisectingAngle : ClassicalProblem
  squaringTheCircle : ClassicalProblem
  problemsDefined : Prop

structure ClassicalProblemsEvidence (E : EuclideanPlane) (P : ClassicalProblemsPackage E) where
  problemsDefinedClosed : P.problemsDefined

def ClassicalProblemsClosed (E : EuclideanPlane) (P : ClassicalProblemsPackage E) : Prop :=
  P.problemsDefined

theorem classical_problems_closed_from_evidence (E : EuclideanPlane) (P : ClassicalProblemsPackage E)
    (ev : ClassicalProblemsEvidence E P) : ClassicalProblemsClosed E P :=
  ev.problemsDefinedClosed

end ElementaryProblemsEuclideanGeometriesCanonicalLaneLean
end HautevilleHouse