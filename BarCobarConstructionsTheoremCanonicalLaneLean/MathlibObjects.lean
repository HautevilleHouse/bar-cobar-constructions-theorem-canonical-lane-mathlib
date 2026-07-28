import BarCobarConstructionsTheoremCanonicalLaneLean.FinalTheorem
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BarCobarConstructionsTheoremCanonicalLaneLean

open canonicalLaneMathlib.AdmissibleClass

structure BarCobarSpace where
  carrier : Type
  dgAlgebra : DifferentialGradedAlgebra carrier

def BarCobarWitnessClosed (O : BarCobarAdmittedObject) : Prop :=
  O.dgAlgebraStructure ∧ (O.barConstruction = O.cobarConstruction)

end BarCobarConstructionsTheoremCanonicalLaneLean
end HautevilleHouse
