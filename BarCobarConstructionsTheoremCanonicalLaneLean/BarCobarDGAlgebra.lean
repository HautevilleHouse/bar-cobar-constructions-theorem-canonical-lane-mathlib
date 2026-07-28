import BarCobarConstructionsTheoremCanonicalLaneLean.AdmissibleClass
import Mathlib.CategoryTheory.DifferentialGraded.Basic

namespace HautevilleHouse
namespace BarCobarConstructionsTheoremCanonicalLaneLean

structure DGAlgebraPackage where
  underlying : Type u
  differential : ℕ → underlying → underlying
  product : underlying → underlying → underlying
  unit : underlying
  dgAlgebraAxioms : Prop
  cochainComplexAssociated : Prop
  augmentation : Prop

def DGAlgebraClosed (G : DGAlgebraPackage) : Prop :=
  G.dgAlgebraAxioms ∧ G.cochainComplexAssociated ∧ G.augmentation

structure DGAlgebraEvidence (G : DGAlgebraPackage) where
  dgAlgebraAxiomsClosed : G.dgAlgebraAxioms
  cochainComplexAssociatedClosed : G.cochainComplexAssociated
  augmentationClosed : G.augmentation

theorem dg_algebra_closed_from_evidence (G : DGAlgebraPackage) (E : DGAlgebraEvidence G) :
    DGAlgebraClosed G :=
  And.intro E.dgAlgebraAxiomsClosed (And.intro E.cochainComplexAssociatedClosed E.augmentationClosed)

end BarCobarConstructionsTheoremCanonicalLaneLean
end HautevilleHouse
