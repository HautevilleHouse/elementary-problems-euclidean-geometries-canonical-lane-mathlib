import ElementaryProblemsEuclideanGeometriesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElementaryProblemsEuclideanGeometriesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  EuclideanWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ElementaryProblemsEuclideanGeometriesCanonicalLaneLean
end HautevilleHouse