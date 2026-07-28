import BarCobarConstructionsTheoremCanonicalLaneLean.BarCobarAdmissibleClass

namespace HautevilleHouse
namespace BarCobarConstructionsTheoremCanonicalLaneLean

structure HandleBodyPackage where
  handleDecomposition : Prop
  barCobarPairs : Prop
  boundaryConditions : Prop
  framingCompatibility : Prop

structure HandleBodyEvidence (H : HandleBodyPackage) where
  handleDecompositionClosed : H.handleDecomposition
  barCobarPairsClosed : H.barCobarPairs
  boundaryConditionsClosed : H.boundaryConditions
  framingCompatibilityClosed : H.framingCompatibility

def HandleBodyClosed (H : HandleBodyPackage) : Prop :=
  H.handleDecomposition ∧ H.barCobarPairs ∧ H.boundaryConditions ∧ H.framingCompatibility

theorem handle_body_closed_from_evidence (H : HandleBodyPackage) (E : HandleBodyEvidence H) :
    HandleBodyClosed H := by
  exact And.intro E.handleDecompositionClosed
    (And.intro E.barCobarPairsClosed
      (And.intro E.boundaryConditionsClosed E.framingCompatibilityClosed))

end BarCobarConstructionsTheoremCanonicalLaneLean
end HautevilleHouse