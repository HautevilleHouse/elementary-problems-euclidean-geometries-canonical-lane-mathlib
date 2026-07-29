import HautevilleHouse.ElementaryProblemsEuclideanGeometriesCanonicalLaneLean.EuclideanGeometryBasics

namespace HautevilleHouse
namespace ElementaryProblemsEuclideanGeometriesCanonicalLaneLean

structure PolygonTheoremsPackage (G : EuclideanGeometryPackage) where
  polygonSet : Set (List Point)
  angleSumFormula : Prop
  regularPolygonDefined : Prop
  polygonAreaFormula : Prop

structure PolygonTheoremsEvidence {G : EuclideanGeometryPackage} (P : PolygonTheoremsPackage G) where
  polygonSetNonempty : P.polygonSet.Nonempty
  angleSumFormulaHolds : P.angleSumFormula
  regularPolygonDefinedHolds : P.regularPolygonDefined
  polygonAreaFormulaHolds : P.polygonAreaFormula

def PolygonTheoremsClosed {G : EuclideanGeometryPackage} (P : PolygonTheoremsPackage G) : Prop :=
  P.polygonSet.Nonempty ∧ P.angleSumFormula ∧ P.regularPolygonDefined ∧ P.polygonAreaFormula

theorem polygon_theorems_closed_from_evidence {G : EuclideanGeometryPackage} (P : PolygonTheoremsPackage G) (E : PolygonTheoremsEvidence P) : PolygonTheoremsClosed P := by
  exact And.intro E.polygonSetNonempty (And.intro E.angleSumFormulaHolds (And.intro E.regularPolygonDefinedHolds E.polygonAreaFormulaHolds))

end ElementaryProblemsEuclideanGeometriesCanonicalLaneLean
end HautevilleHouse