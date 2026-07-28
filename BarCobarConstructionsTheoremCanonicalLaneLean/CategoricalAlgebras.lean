import HautevilleHouse.BarCobarConstructionsTheoremCanonicalLaneLean.BarCobarConstructions

namespace HautevilleHouse
namespace BarCobarConstructionsTheoremCanonicalLaneLean

structure AlgebraOverOperad (O : BarCobarObject) where
  underlyingSpace : Type
  structureMaps : O.chainComplex → underlyingSpace → underlyingSpace
  associativityCondition : Prop
  unitCondition : Prop

structure AlgebraResolution (O : BarCobarObject) (A : AlgebraOverOperad O) where
  resolution : BarConstructionPackage O
  augmentation : A.underlyingSpace → O.chainComplex
  homotopyData : Prop
  homotopyDataClosed : homotopyData

def algebraResolutionClosed (O : BarCobarObject) (A : AlgebraOverOperad O) (R : AlgebraResolution O A) : Prop :=
  R.homotopyData

end BarCobarConstructionsTheoremCanonicalLaneLean
end HautevilleHouse