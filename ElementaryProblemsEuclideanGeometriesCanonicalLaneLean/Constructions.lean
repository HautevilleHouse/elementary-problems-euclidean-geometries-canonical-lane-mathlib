import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ElementaryProblemsEuclideanGeometriesCanonicalLaneLean.EuclideanAxioms

namespace HautevilleHouse
namespace ElementaryProblemsEuclideanGeometriesCanonicalLaneLean

structure ConstructionStep where
  description : String
  valid : Prop

structure ConstructionPackage (E : EuclideanPlane) where
  bisectSegment : ConstructionStep
  bisectAngle : ConstructionStep
  constructPerpendicular : ConstructionStep
  constructCircle : ConstructionStep
  allStepsValid : Prop

structure ConstructionEvidence (E : EuclideanPlane) (P : ConstructionPackage E) where
  bisectSegmentClosed : P.bisectSegment.valid
  bisectAngleClosed : P.bisectAngle.valid
  constructPerpendicularClosed : P.constructPerpendicular.valid
  constructCircleClosed : P.constructCircle.valid
  allStepsValidClosed : P.allStepsValid

def ConstructionClosed (E : EuclideanPlane) (P : ConstructionPackage E) : Prop :=
  P.allStepsValid

theorem construction_closed_from_evidence (E : EuclideanPlane) (P : ConstructionPackage E)
    (ev : ConstructionEvidence E P) : ConstructionClosed E P :=
  ev.allStepsValidClosed

end ElementaryProblemsEuclideanGeometriesCanonicalLaneLean
end HautevilleHouse