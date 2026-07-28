import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BarCobarConstructionsTheoremCanonicalLaneLean.ChainComplex

namespace HautevilleHouse
namespace BarCobarConstructionsTheoremCanonicalLaneLean

structure BarCobarResolutionPackage {S : SimplicialComplexPackage}
    {B : BarConstructionPackage S} {C : CobarConstructionPackage S}
    (K : ChainComplexPackage B C) where
  resolutionMap : Type u
  quasiIsomorphism : Prop
  acyclic : Prop
  resolutionProperty : Prop

structure BarCobarResolutionEvidence {S : SimplicialComplexPackage}
    {B : BarConstructionPackage S} {C : CobarConstructionPackage S}
    {K : ChainComplexPackage B C}
    (R : BarCobarResolutionPackage K) where
  quasiIsomorphismClosed : R.quasiIsomorphism
  acyclicClosed : R.acyclic
  resolutionPropertyClosed : R.resolutionProperty

def BarCobarResolutionClosed {S : SimplicialComplexPackage}
    {B : BarConstructionPackage S} {C : CobarConstructionPackage S}
    {K : ChainComplexPackage B C}
    (R : BarCobarResolutionPackage K) : Prop :=
  R.quasiIsomorphism ∧ R.acyclic ∧ R.resolutionProperty

theorem bar_cobar_resolution_closed_from_evidence {S : SimplicialComplexPackage}
    {B : BarConstructionPackage S} {C : CobarConstructionPackage S}
    {K : ChainComplexPackage B C}
    (R : BarCobarResolutionPackage K) (E : BarCobarResolutionEvidence R) :
    BarCobarResolutionClosed R := by
  exact And.intro E.quasiIsomorphismClosed (And.intro E.acyclicClosed E.resolutionPropertyClosed)

end BarCobarConstructionsTheoremCanonicalLaneLean
end HautevilleHouse
