import ElementaryProblemsEuclideanGeometriesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElementaryProblemsEuclideanGeometriesCanonicalLaneLean

structure SimilarityPackage (A : AdmissibleClass) where
  aaSimilarity : Prop
  sssSimilarity : Prop
  sasSimilarity : Prop
  basicProportionality : Prop
  areaRatio : Prop

structure SimilarityEvidence (A : AdmissibleClass) (P : SimilarityPackage A) where
  aaSimilarityClosed : P.aaSimilarity
  sssSimilarityClosed : P.sssSimilarity
  sasSimilarityClosed : P.sasSimilarity
  basicProportionalityClosed : P.basicProportionality
  areaRatioClosed : P.areaRatio

def SimilarityClosed (A : AdmissibleClass) (P : SimilarityPackage A) : Prop :=
  P.aaSimilarity ∧ P.sssSimilarity ∧ P.sasSimilarity ∧ P.basicProportionality ∧ P.areaRatio

theorem similarity_closed_from_evidence (A : AdmissibleClass) (P : SimilarityPackage A) (E : SimilarityEvidence A P) :
    SimilarityClosed A P := by
  exact And.intro E.aaSimilarityClosed (And.intro E.sssSimilarityClosed (And.intro E.sasSimilarityClosed (And.intro E.basicProportionalityClosed E.areaRatioClosed)))

end ElementaryProblemsEuclideanGeometriesCanonicalLaneLean
end HautevilleHouse