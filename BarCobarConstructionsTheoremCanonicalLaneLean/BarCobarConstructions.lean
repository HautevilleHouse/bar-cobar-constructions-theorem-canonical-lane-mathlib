import HautevilleHouse.BarCobarConstructionsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BarCobarConstructionsTheoremCanonicalLaneLean

structure BarConstructionPackage (O : BarCobarObject) where
  augmentation : O.chainComplex → ℝ
  differentialFormula : O.differential = λ x => x
  freeResolution : Prop
  acyclic : Prop

structure CohomologyPackage (O : BarCobarObject) where
  cohomologyAlgebra : Type
  product : cohomologyAlgebra → cohomologyAlgebra → cohomologyAlgebra
  associativity : Prop
  unit : cohomologyAlgebra
  unitProperty : ∀ x : cohomologyAlgebra, product x unit = x ∧ product unit x = x

end BarCobarConstructionsTheoremCanonicalLaneLean
end HautevilleHouse