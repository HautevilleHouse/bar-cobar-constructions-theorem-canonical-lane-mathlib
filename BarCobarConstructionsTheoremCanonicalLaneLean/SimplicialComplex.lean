import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BarCobarConstructionsTheoremCanonicalLaneLean

structure SimplicialComplexPackage where
  vertices : Type u
  simplices : List (List vertices)
  faceMaps : Prop
  degeneracyMaps : Prop
  simplicialIdentity : Prop

structure SimplicialComplexEvidence (S : SimplicialComplexPackage) where
  faceMapsClosed : S.faceMaps
  degeneracyMapsClosed : S.degeneracyMaps
  simplicialIdentityClosed : S.simplicialIdentity

def SimplicialComplexClosed (S : SimplicialComplexPackage) : Prop :=
  S.faceMaps ∧ S.degeneracyMaps ∧ S.simplicialIdentity

theorem simplicial_complex_closed_from_evidence (S : SimplicialComplexPackage)
    (E : SimplicialComplexEvidence S) : SimplicialComplexClosed S := by
  exact And.intro E.faceMapsClosed (And.intro E.degeneracyMapsClosed E.simplicialIdentityClosed)

end BarCobarConstructionsTheoremCanonicalLaneLean
end HautevilleHouse
