import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElementaryProblemsEuclideanGeometriesCanonicalLaneLean

structure EuclideanAdmittedObject where
  space : Type
  theoremClaim : Prop
  conclusion : theoremClaim

structure AdmissibleClass where
  object : EuclideanAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  EuclideanWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def EuclideanWitnessClosed (O : EuclideanAdmittedObject) : Prop :=
  O.theoremClaim

end ElementaryProblemsEuclideanGeometriesCanonicalLaneLean
end HautevilleHouse