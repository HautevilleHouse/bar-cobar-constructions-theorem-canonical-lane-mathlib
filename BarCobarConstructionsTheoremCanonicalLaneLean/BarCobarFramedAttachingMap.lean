import BarCobarConstructionsTheoremCanonicalLaneLean.BarCobarHandleBody

namespace HautevilleHouse
namespace BarCobarConstructionsTheoremCanonicalLaneLean

structure FramedAttachingMapPackage {H : HandleBodyPackage} where
  attachingSpheres : Prop
  framingChoice : Prop
  surgeryImplementation : Prop
  handleAdditionCompatible : Prop

structure FramedAttachingMapEvidence {H : HandleBodyPackage} (F : FramedAttachingMapPackage H) where
  attachingSpheresClosed : F.attachingSpheres
  framingChoiceClosed : F.framingChoice
  surgeryImplementationClosed : F.surgeryImplementation
  handleAdditionCompatibleClosed : F.handleAdditionCompatible

def FramedAttachingMapClosed {H : HandleBodyPackage} (F : FramedAttachingMapPackage H) : Prop :=
  F.attachingSpheres ∧ F.framingChoice ∧ F.surgeryImplementation ∧ F.handleAdditionCompatible

theorem framed_attaching_map_closed_from_evidence {H : HandleBodyPackage}
    (F : FramedAttachingMapPackage H) (E : FramedAttachingMapEvidence F) :
    FramedAttachingMapClosed F := by
  exact And.intro E.attachingSpheresClosed
    (And.intro E.framingChoiceClosed
      (And.intro E.surgeryImplementationClosed E.handleAdditionCompatibleClosed))

end BarCobarConstructionsTheoremCanonicalLaneLean
end HautevilleHouse