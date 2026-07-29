import HautevilleHouse.ElementaryProblemsEuclideanGeometriesCanonicalLaneLean.EuclideanGeometryBasics

namespace HautevilleHouse
namespace ElementaryProblemsEuclideanGeometriesCanonicalLaneLean

structure ConstructionProblemsPackage (G : EuclideanGeometryPackage) where
  constructionSet : Set (Point → Point)  -- compass and straightedge constructions
  bisectionPossible : Prop
  perpendicularConstruction : Prop
  parallelConstruction : Prop

structure ConstructionProblemsEvidence {G : EuclideanGeometryPackage} (C : ConstructionProblemsPackage G) where
  constructionSetNonempty : C.constructionSet.Nonempty
  bisectionPossibleHolds : C.bisectionPossible
  perpendicularConstructionHolds : C.perpendicularConstruction
  parallelConstructionHolds : C.parallelConstruction

def ConstructionProblemsClosed {G : EuclideanGeometryPackage} (C : ConstructionProblemsPackage G) : Prop :=
  C.constructionSet.Nonempty ∧ C.bisectionPossible ∧ C.perpendicularConstruction ∧ C.parallelConstruction

theorem construction_problems_closed_from_evidence {G : EuclideanGeometryPackage} (C : ConstructionProblemsPackage G) (E : ConstructionProblemsEvidence C) : ConstructionProblemsClosed C := by
  exact And.intro E.constructionSetNonempty (And.intro E.bisectionPossibleHolds (And.intro E.perpendicularConstructionHolds E.parallelConstructionHolds))

end ElementaryProblemsEuclideanGeometriesCanonicalLaneLean
end HautevilleHouse