import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BarCobarConstructionsTheoremCanonicalLaneLean.SimplicialComplex

namespace HautevilleHouse
namespace BarCobarConstructionsTheoremCanonicalLaneLean

structure BarConstructionPackage (S : SimplicialComplexPackage) where
  chainComplex : Type u
  differential : Type u
  augmentation : Prop
  contractingHomotopy : Prop
  barComplexProperty : Prop

structure BarConstructionEvidence {S : SimplicialComplexPackage}
    (B : BarConstructionPackage S) where
  augmentationClosed : B.augmentation
  contractingHomotopyClosed : B.contractingHomotopy
  barComplexPropertyClosed : B.barComplexProperty

def BarConstructionClosed {S : SimplicialComplexPackage}
    (B : BarConstructionPackage S) : Prop :=
  B.augmentation ∧ B.contractingHomotopy ∧ B.barComplexProperty

theorem bar_construction_closed_from_evidence {S : SimplicialComplexPackage}
    (B : BarConstructionPackage S) (E : BarConstructionEvidence B) :
    BarConstructionClosed B := by
  exact And.intro E.augmentationClosed (And.intro E.contractingHomotopyClosed E.barComplexPropertyClosed)

end BarCobarConstructionsTheoremCanonicalLaneLean
end HautevilleHouse
