import BarCobarConstructionsTheoremCanonicalLaneLean.BarCobarBridgeLemmas

namespace HautevilleHouse
namespace BarCobarConstructionsTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BarCobarConstructionsTheoremCanonicalLaneLean
end HautevilleHouse