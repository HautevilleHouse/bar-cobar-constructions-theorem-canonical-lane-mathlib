import BarCobarConstructionsTheoremCanonicalLaneLean.BarCobarModelCategory

namespace HautevilleHouse
namespace BarCobarConstructionsTheoremCanonicalLaneLean

structure HomotopyTransferPackage where
  sourceModel : BarCobarModelCategoryPackage
  targetModel : BarCobarModelCategoryPackage
  transferAdjunction : Prop
  derivedEquivalence : Prop

def HomotopyTransferClosed (H : HomotopyTransferPackage) : Prop :=
  H.transferAdjunction ∧ H.derivedEquivalence

structure HomotopyTransferEvidence (H : HomotopyTransferPackage) where
  transferAdjunctionClosed : H.transferAdjunction
  derivedEquivalenceClosed : H.derivedEquivalence

theorem homotopy_transfer_closed_from_evidence
    (H : HomotopyTransferPackage) (E : HomotopyTransferEvidence H) :
    HomotopyTransferClosed H :=
  And.intro E.transferAdjunctionClosed E.derivedEquivalenceClosed

end BarCobarConstructionsTheoremCanonicalLaneLean
end HautevilleHouse
