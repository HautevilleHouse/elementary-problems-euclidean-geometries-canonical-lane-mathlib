import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElementaryProblemsEuclideanGeometriesCanonicalLaneLean

structure EuclideanPlane where
  Point : Type
  Line : Type
  Circle : Type
  incidence : Point → Line → Prop
  between : Point → Point → Point → Prop
  distance : Point → Point → ℝ
  angle : Point → Point → Point → ℝ
  axiomsSatisfied : Prop

structure EuclideanAxiomEvidence (E : EuclideanPlane) where
  incidenceAxioms : Prop
  betweenAxioms : Prop
  congruenceAxioms : Prop
  continuityAxiom : Prop
  parallelPostulate : Prop
  axiomsSatisfiedEvidence : E.axiomsSatisfied

def EuclideanAxiomClosed (E : EuclideanPlane) : Prop :=
  E.axiomsSatisfied

theorem euclidean_axiom_closed_from_evidence (E : EuclideanPlane) (ev : EuclideanAxiomEvidence E) :
    EuclideanAxiomClosed E := ev.axiomsSatisfiedEvidence

end ElementaryProblemsEuclideanGeometriesCanonicalLaneLean
end HautevilleHouse