import HautevilleHouse.BarCobarConstructionsTheoremCanonicalLaneLean.CategoricalAlgebras

namespace HautevilleHouse
namespace BarCobarConstructionsTheoremCanonicalLaneLean

structure HomotopyTransferPackage (O : BarCobarObject) where
  sourceAlgebra : AlgebraOverOperad O
  targetAlgebra : AlgebraOverOperad O
  homotopyEquivalence : sourceAlgebra.underlyingSpace ≃ targetAlgebra.underlyingSpace
  transferCondition : Prop
  transferredStructure : AlgebraOverOperad O
  transferredStructureProperty : transferredStructure = targetAlgebra

def homotopyTransferClosed (H : HomotopyTransferPackage O) : Prop := H.transferCondition

end BarCobarConstructionsTheoremCanonicalLaneLean
end HautevilleHouse