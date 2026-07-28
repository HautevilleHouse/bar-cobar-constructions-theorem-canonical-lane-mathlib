import BarCobarConstructionsTheoremCanonicalLaneLean.BarCobarConstruction

namespace HautevilleHouse
namespace BarCobarConstructionsTheoremCanonicalLaneLean

structure KoszulDualityPackage {P : BarCobarConstructionPackage} (C : BarCobarConstructionEvidence P) where
  koszulComplex : Type u
  dualityPairing : Prop
  koszulResolution : Prop
  barCobarHomology : Prop

structure KoszulDualityEvidence {P : BarCobarConstructionPackage} {C : BarCobarConstructionEvidence P}
    (K : KoszulDualityPackage C) where
  koszulComplexClosed : K.koszulComplex := K.koszulComplex
  dualityPairingClosed : K.dualityPairing
  koszulResolutionClosed : K.koszulResolution
  barCobarHomologyClosed : K.barCobarHomology

def KoszulDualityClosed {P : BarCobarConstructionPackage} {C : BarCobarConstructionEvidence P}
    (K : KoszulDualityPackage C) : Prop :=
  K.dualityPairing ∧ K.koszulResolution ∧ K.barCobarHomology

theorem koszul_duality_closed_from_evidence {P : BarCobarConstructionPackage}
    {C : BarCobarConstructionEvidence P} (K : KoszulDualityPackage C)
    (E : KoszulDualityEvidence K) : KoszulDualityClosed K := by
  exact And.intro E.dualityPairingClosed
    (And.intro E.koszulResolutionClosed E.barCobarHomologyClosed)

end BarCobarConstructionsTheoremCanonicalLaneLean
end HautevilleHouse