import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BarCobarConstructionsTheoremCanonicalLaneLean.BarConstruction
import HautevilleHouse.BarCobarConstructionsTheoremCanonicalLaneLean.CobarConstruction

namespace HautevilleHouse
namespace BarCobarConstructionsTheoremCanonicalLaneLean

structure ChainComplexPackage {S : SimplicialComplexPackage}
    (B : BarConstructionPackage S) (C : CobarConstructionPackage S) where
  chainGroups : ℕ → Type u
  boundaryMaps : (n : ℕ) → (chainGroups (n+1) → chainGroups n)
  boundarySquared : Prop
  homology : Prop

structure ChainComplexEvidence {S : SimplicialComplexPackage}
    {B : BarConstructionPackage S} {C : CobarConstructionPackage S}
    (K : ChainComplexPackage B C) where
  boundarySquaredClosed : K.boundarySquared
  homologyClosed : K.homology

def ChainComplexClosed {S : SimplicialComplexPackage}
    {B : BarConstructionPackage S} {C : CobarConstructionPackage S}
    (K : ChainComplexPackage B C) : Prop :=
  K.boundarySquared ∧ K.homology

theorem chain_complex_closed_from_evidence {S : SimplicialComplexPackage}
    {B : BarConstructionPackage S} {C : CobarConstructionPackage S}
    (K : ChainComplexPackage B C) (E : ChainComplexEvidence K) :
    ChainComplexClosed K := by
  exact And.intro E.boundarySquaredClosed E.homologyClosed

end BarCobarConstructionsTheoremCanonicalLaneLean
end HautevilleHouse
