import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElementaryProblemsEuclideanGeometriesCanonicalLaneLean

structure AngleChasePackage where
  angleAddition : Prop
  verticalAngles : Prop
  alternateInteriorAngles : Prop
  sumOfTriangleAngles : Prop
  exteriorAngleTheorem : Prop

structure AngleChaseEvidence (A : AngleChasePackage) where
  angleAdditionClosed : A.angleAddition
  verticalAnglesClosed : A.verticalAngles
  alternateInteriorAnglesClosed : A.alternateInteriorAngles
  sumOfTriangleAnglesClosed : A.sumOfTriangleAngles
  exteriorAngleTheoremClosed : A.exteriorAngleTheorem

def AngleChaseClosed (A : AngleChasePackage) : Prop :=
  A.angleAddition ∧ A.verticalAngles ∧ A.alternateInteriorAngles ∧ A.sumOfTriangleAngles ∧ A.exteriorAngleTheorem

theorem angle_chase_closed_from_evidence (A : AngleChasePackage)
    (Ev : AngleChaseEvidence A) : AngleChaseClosed A := by
  exact And.intro Ev.angleAdditionClosed
    (And.intro Ev.verticalAnglesClosed
      (And.intro Ev.alternateInteriorAnglesClosed
        (And.intro Ev.sumOfTriangleAnglesClosed Ev.exteriorAngleTheoremClosed)))

end ElementaryProblemsEuclideanGeometriesCanonicalLaneLean
end HautevilleHouse