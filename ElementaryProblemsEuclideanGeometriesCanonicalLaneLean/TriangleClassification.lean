import HautevilleHouse.ElementaryProblemsEuclideanGeometriesCanonicalLaneLean.EuclideanGeometryBasics

namespace HautevilleHouse
namespace ElementaryProblemsEuclideanGeometriesCanonicalLaneLean

structure TriangleClassificationPackage (G : EuclideanGeometryPackage) where
  triangleSet : Set (Point × Point × Point)
  isEquilateral : Prop
  isIsosceles : Prop
  isScalene : Prop
  angleSum : Prop

structure TriangleClassificationEvidence {G : EuclideanGeometryPackage} (T : TriangleClassificationPackage G) where
  triangleSetNonempty : T.triangleSet.Nonempty
  isEquilateralDefined : T.isEquilateral
  isIsoscelesDefined : T.isIsosceles
  isScaleneDefined : T.isScalene
  angleSumHolds : T.angleSum

def TriangleClassificationClosed {G : EuclideanGeometryPackage} (T : TriangleClassificationPackage G) : Prop :=
  T.triangleSet.Nonempty ∧ T.isEquilateral ∧ T.isIsosceles ∧ T.isScalene ∧ T.angleSum

theorem triangle_classification_closed_from_evidence {G : EuclideanGeometryPackage} (T : TriangleClassificationPackage G) (E : TriangleClassificationEvidence T) : TriangleClassificationClosed T := by
  exact And.intro E.triangleSetNonempty (And.intro E.isEquilateralDefined (And.intro E.isIsoscelesDefined (And.intro E.isScaleneDefined E.angleSumHolds)))

end ElementaryProblemsEuclideanGeometriesCanonicalLaneLean
end HautevilleHouse