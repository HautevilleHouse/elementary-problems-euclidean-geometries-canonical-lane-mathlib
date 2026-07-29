import ElementaryProblemsEuclideanGeometriesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElementaryProblemsEuclideanGeometriesCanonicalLaneLean

structure TriangleCongruencePackage (A : AdmissibleClass) where
  sss : Prop
  sas : Prop
  asa : Prop
  aas : Prop
  hl : Prop

structure TriangleCongruenceEvidence (A : AdmissibleClass) (P : TriangleCongruencePackage A) where
  sssClosed : P.sss
  sasClosed : P.sas
  asaClosed : P.asa
  aasClosed : P.aas
  hlClosed : P.hl

def TriangleCongruenceClosed (A : AdmissibleClass) (P : TriangleCongruencePackage A) : Prop :=
  P.sss ∧ P.sas ∧ P.asa ∧ P.aas ∧ P.hl

theorem triangle_congruence_closed_from_evidence (A : AdmissibleClass) (P : TriangleCongruencePackage A) (E : TriangleCongruenceEvidence A P) :
    TriangleCongruenceClosed A P := by
  exact And.intro E.sssClosed (And.intro E.sasClosed (And.intro E.asaClosed (And.intro E.aasClosed E.hlClosed)))

end ElementaryProblemsEuclideanGeometriesCanonicalLaneLean
end HautevilleHouse