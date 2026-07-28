import HautevilleHouse.BarCobarConstructionsTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BarCobarConstructionsTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.barCobarDuality ∨ A.resolutionProperty

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BarCobarConstructionsTheoremCanonicalLaneLean
end HautevilleHouse