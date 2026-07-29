import HautevilleHouse.ElementaryProblemsEuclideanGeometriesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElementaryProblemsEuclideanGeometriesCanonicalLaneLean

structure EuclideanGeometryPackage where
  pointSet : Set Point
  lineSet : Set (Set Point)
  congruenceRelation : Prop
  angleMeasure : Prop
  parallelPostulate : Prop

structure EuclideanGeometryEvidence (G : EuclideanGeometryPackage) where
  pointSetNonempty : G.pointSet.Nonempty
  lineSetDefined : G.lineSet ≠ ∅
  congruenceRelationHolds : G.congruenceRelation
  angleMeasureDefined : G.angleMeasure
  parallelPostulateHolds : G.parallelPostulate

def EuclideanGeometryClosed (G : EuclideanGeometryPackage) : Prop :=
  G.pointSet.Nonempty ∧ G.lineSet ≠ ∅ ∧ G.congruenceRelation ∧ G.angleMeasure ∧ G.parallelPostulate

theorem euclidean_geometry_closed_from_evidence (G : EuclideanGeometryPackage) (E : EuclideanGeometryEvidence G) : EuclideanGeometryClosed G := by
  exact And.intro E.pointSetNonempty (And.intro E.lineSetDefined (And.intro E.congruenceRelationHolds (And.intro E.angleMeasureDefined E.parallelPostulateHolds)))

end ElementaryProblemsEuclideanGeometriesCanonicalLaneLean
end HautevilleHouse