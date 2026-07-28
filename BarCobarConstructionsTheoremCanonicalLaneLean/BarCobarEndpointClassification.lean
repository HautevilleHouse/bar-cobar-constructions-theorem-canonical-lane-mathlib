import BarCobarConstructionsTheoremCanonicalLaneLean.BarCobarMorseReconstruction

namespace HautevilleHouse
namespace BarCobarConstructionsTheoremCanonicalLaneLean

structure EndpointClassificationPackage {H : HandleBodyPackage}
    {F : FramedAttachingMapPackage H} {M : MorseReconstructionPackage F} where
  targetManifold : Type u
  targetTopology : TopologicalSpace targetManifold
  handleDecompositionEquivalentToMorse : Prop
  barCobarPresentation : Prop
  endpointReconstructed : Prop

structure EndpointClassificationEvidence {H : HandleBodyPackage}
    {F : FramedAttachingMapPackage H} {M : MorseReconstructionPackage F}
    (E : EndpointClassificationPackage M) where
  handleDecompositionEquivalentToMorseClosed : E.handleDecompositionEquivalentToMorse
  barCobarPresentationClosed : E.barCobarPresentation
  endpointReconstructedClosed : E.endpointReconstructed

def EndpointClassificationClosed {H : HandleBodyPackage}
    {F : FramedAttachingMapPackage H} {M : MorseReconstructionPackage F}
    (E : EndpointClassificationPackage M) : Prop :=
  E.handleDecompositionEquivalentToMorse ∧ E.barCobarPresentation ∧ E.endpointReconstructed

theorem endpoint_classification_closed_from_evidence {H : HandleBodyPackage}
    {F : FramedAttachingMapPackage H} {M : MorseReconstructionPackage F}
    (E : EndpointClassificationPackage M) (Ev : EndpointClassificationEvidence E) :
    EndpointClassificationClosed E := by
  exact And.intro Ev.handleDecompositionEquivalentToMorseClosed
    (And.intro Ev.barCobarPresentationClosed Ev.endpointReconstructedClosed)

end BarCobarConstructionsTheoremCanonicalLaneLean
end HautevilleHouse