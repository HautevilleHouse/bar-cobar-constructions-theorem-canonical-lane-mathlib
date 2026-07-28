import BarCobarConstructionsTheoremCanonicalLaneLean.ModelCategoryStructure

namespace HautevilleHouse
namespace BarCobarConstructionsTheoremCanonicalLaneLean

structure AugmentedChainComplexPackage where
  chainComplex : Type u
  augmentationMap : chainComplex → ℤ
  coaugmentationMap : ℤ → chainComplex
  barCobarAugmentation : Prop
  koszulDualAugmentation : Prop

structure AugmentedChainComplexEvidence (A : AugmentedChainComplexPackage) where
  barCobarAugmentationClosed : A.barCobarAugmentation
  koszulDualAugmentationClosed : A.koszulDualAugmentation

def AugmentedChainComplexClosed (A : AugmentedChainComplexPackage) : Prop :=
  A.barCobarAugmentation ∧ A.koszulDualAugmentation

theorem augmented_chain_complex_closed_from_evidence (A : AugmentedChainComplexPackage)
    (E : AugmentedChainComplexEvidence A) : AugmentedChainComplexClosed A := by
  exact And.intro E.barCobarAugmentationClosed E.koszulDualAugmentationClosed

end BarCobarConstructionsTheoremCanonicalLaneLean
end HautevilleHouse