import BarCobarConstructionsTheoremCanonicalLaneLean.KoszulDuality

namespace HautevilleHouse
namespace BarCobarConstructionsTheoremCanonicalLaneLean

structure ModelCategoryStructurePackage where
  modelCategory : Type u → Type u
  weakEquivalences : Prop
  fibrations : Prop
  cofibrations : Prop
  barCobarModelStructure : Prop

structure ModelCategoryStructureEvidence (M : ModelCategoryStructurePackage) where
  weakEquivalencesClosed : M.weakEquivalences
  fibrationsClosed : M.fibrations
  cofibrationsClosed : M.cofibrations
  barCobarModelStructureClosed : M.barCobarModelStructure

def ModelCategoryStructureClosed (M : ModelCategoryStructurePackage) : Prop :=
  M.weakEquivalences ∧ M.fibrations ∧ M.cofibrations ∧ M.barCobarModelStructure

theorem model_category_structure_closed_from_evidence (M : ModelCategoryStructurePackage)
    (E : ModelCategoryStructureEvidence M) : ModelCategoryStructureClosed M := by
  exact And.intro E.weakEquivalencesClosed
    (And.intro E.fibrationsClosed
      (And.intro E.cofibrationsClosed E.barCobarModelStructureClosed))

end BarCobarConstructionsTheoremCanonicalLaneLean
end HautevilleHouse