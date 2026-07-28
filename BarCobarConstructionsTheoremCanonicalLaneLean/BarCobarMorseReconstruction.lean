import BarCobarConstructionsTheoremCanonicalLaneLean.BarCobarFramedAttachingMap

namespace HautevilleHouse
namespace BarCobarConstructionsTheoremCanonicalLaneLean

structure MorseReconstructionPackage {H : HandleBodyPackage}
    {F : FramedAttachingMapPackage H} where
  morseFunctionExists : Prop
  criticalPointsClassified : Prop
  barCobarElimination : Prop
  handleSlidingCompatibility : Prop

structure MorseReconstructionEvidence {H : HandleBodyPackage}
    {F : FramedAttachingMapPackage H} (M : MorseReconstructionPackage F) where
  morseFunctionExistsClosed : M.morseFunctionExists
  criticalPointsClassifiedClosed : M.criticalPointsClassified
  barCobarEliminationClosed : M.barCobarElimination
  handleSlidingCompatibilityClosed : M.handleSlidingCompatibility

def MorseReconstructionClosed {H : HandleBodyPackage}
    {F : FramedAttachingMapPackage H} (M : MorseReconstructionPackage F) : Prop :=
  M.morseFunctionExists ∧ M.criticalPointsClassified ∧
  M.barCobarElimination ∧ M.handleSlidingCompatibility

theorem morse_reconstruction_closed_from_evidence {H : HandleBodyPackage}
    {F : FramedAttachingMapPackage H} (M : MorseReconstructionPackage F)
    (E : MorseReconstructionEvidence M) : MorseReconstructionClosed M := by
  exact And.intro E.morseFunctionExistsClosed
    (And.intro E.criticalPointsClassifiedClosed
      (And.intro E.barCobarEliminationClosed E.handleSlidingCompatibilityClosed))

end BarCobarConstructionsTheoremCanonicalLaneLean
end HautevilleHouse