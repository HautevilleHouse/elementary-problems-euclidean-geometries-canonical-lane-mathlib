import ElementaryProblemsEuclideanGeometriesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElementaryProblemsEuclideanGeometriesCanonicalLaneLean

structure EuclideanTransformationsPackage (A : AdmissibleClass) where
  isometryPreservesDistance : Prop
  rotationIsIsometry : Prop
  reflectionIsIsometry : Prop
  translationIsIsometry : Prop
  compositionClosed : Prop

structure EuclideanTransformationsEvidence (A : AdmissibleClass) (P : EuclideanTransformationsPackage A) where
  isometryPreservesDistanceClosed : P.isometryPreservesDistance
  rotationIsIsometryClosed : P.rotationIsIsometry
  reflectionIsIsometryClosed : P.reflectionIsIsometry
  translationIsIsometryClosed : P.translationIsIsometry
  compositionClosedClosed : P.compositionClosed

def EuclideanTransformationsClosed (A : AdmissibleClass) (P : EuclideanTransformationsPackage A) : Prop :=
  P.isometryPreservesDistance ∧ P.rotationIsIsometry ∧ P.reflectionIsIsometry ∧ P.translationIsIsometry ∧ P.compositionClosed

theorem euclidean_transformations_closed_from_evidence (A : AdmissibleClass) (P : EuclideanTransformationsPackage A) (E : EuclideanTransformationsEvidence A P) :
    EuclideanTransformationsClosed A P := by
  exact And.intro E.isometryPreservesDistanceClosed (And.intro E.rotationIsIsometryClosed (And.intro E.reflectionIsIsometryClosed (And.intro E.translationIsIsometryClosed E.compositionClosedClosed)))

end ElementaryProblemsEuclideanGeometriesCanonicalLaneLean
end HautevilleHouse