import ElementaryProblemsEuclideanGeometriesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElementaryProblemsEuclideanGeometriesCanonicalLaneLean

structure PythagoreanTheoremPackage (A : AdmissibleClass) where
  rightTriangleDefinition : Prop
  pythagoreanEquality : Prop
  conversePythagorean : Prop
  geometricProof : Prop
  algebraicProof : Prop

structure PythagoreanTheoremEvidence (A : AdmissibleClass) (P : PythagoreanTheoremPackage A) where
  rightTriangleDefinitionClosed : P.rightTriangleDefinition
  pythagoreanEqualityClosed : P.pythagoreanEquality
  conversePythagoreanClosed : P.conversePythagorean
  geometricProofClosed : P.geometricProof
  algebraicProofClosed : P.algebraicProof

def PythagoreanTheoremClosed (A : AdmissibleClass) (P : PythagoreanTheoremPackage A) : Prop :=
  P.rightTriangleDefinition ∧ P.pythagoreanEquality ∧ P.conversePythagorean ∧ P.geometricProof ∧ P.algebraicProof

theorem pythagorean_theorem_closed_from_evidence (A : AdmissibleClass) (P : PythagoreanTheoremPackage A) (E : PythagoreanTheoremEvidence A P) :
    PythagoreanTheoremClosed A P := by
  exact And.intro E.rightTriangleDefinitionClosed (And.intro E.pythagoreanEqualityClosed (And.intro E.conversePythagoreanClosed (And.intro E.geometricProofClosed E.algebraicProofClosed)))

end ElementaryProblemsEuclideanGeometriesCanonicalLaneLean
end HautevilleHouse