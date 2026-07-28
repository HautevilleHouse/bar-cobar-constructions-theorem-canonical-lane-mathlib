import BarCobarConstructionsTheoremCanonicalLaneLean.BarCobarGateLemmas

namespace HautevilleHouse
namespace BarCobarConstructionsTheoremCanonicalLaneLean

def ConstrainedBarCobarClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_bar_cobar_endgame (A : AdmissibleClass) :
    ConstrainedBarCobarClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BarCobarConstructionsTheoremCanonicalLaneLean
end HautevilleHouse