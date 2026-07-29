import ElementaryProblemsEuclideanGeometriesCanonicalLaneLean.BridgeLemmas
import ElementaryProblemsEuclideanGeometriesCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ElementaryProblemsEuclideanGeometriesCanonicalLaneLean

def ConstrainedEuclideanGeometryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_euclidean_geometry_endgame (A : AdmissibleClass) :
    ConstrainedEuclideanGeometryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ElementaryProblemsEuclideanGeometriesCanonicalLaneLean
end HautevilleHouse