import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElementaryProblemsEuclideanGeometriesCanonicalLaneLean

structure EuclideanSpacePackage where
  dimension : Nat
  dotProductDefined : Prop
  normDefined : Prop
  triangleInequality : Prop
  cauchySchwarz : Prop

structure EuclideanSpaceEvidence (E : EuclideanSpacePackage) where
  dotProductDefinedClosed : E.dotProductDefined
  normDefinedClosed : E.normDefined
  triangleInequalityClosed : E.triangleInequality
  cauchySchwarzClosed : E.cauchySchwarz

def EuclideanSpaceClosed (E : EuclideanSpacePackage) : Prop :=
  E.dotProductDefined ∧ E.normDefined ∧ E.triangleInequality ∧ E.cauchySchwarz

theorem euclidean_space_closed_from_evidence (E : EuclideanSpacePackage)
    (Ev : EuclideanSpaceEvidence E) : EuclideanSpaceClosed E := by
  exact And.intro Ev.dotProductDefinedClosed
    (And.intro Ev.normDefinedClosed
      (And.intro Ev.triangleInequalityClosed Ev.cauchySchwarzClosed))

end ElementaryProblemsEuclideanGeometriesCanonicalLaneLean
end HautevilleHouse