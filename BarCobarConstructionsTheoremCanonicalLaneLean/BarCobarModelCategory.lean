import BarCobarConstructionsTheoremCanonicalLaneLean.BarCobarDGAlgebra
import Mathlib.CategoryTheory.ModelCategory

namespace HautevilleHouse
namespace BarCobarConstructionsTheoremCanonicalLaneLean

structure BarCobarModelCategoryPackage where
  dgAlgebraPackage : DGAlgebraPackage
  barCobarAdjunction : Prop
  modelStructure : Prop
  cofibrantGeneration : Prop
  homotopyCategoryEquivalence : Prop

def BarCobarModelCategoryClosed (M : BarCobarModelCategoryPackage) : Prop :=
  M.barCobarAdjunction ∧ M.modelStructure ∧ M.cofibrantGeneration ∧ M.homotopyCategoryEquivalence

structure BarCobarModelCategoryEvidence (M : BarCobarModelCategoryPackage) where
  barCobarAdjunctionClosed : M.barCobarAdjunction
  modelStructureClosed : M.modelStructure
  cofibrantGenerationClosed : M.cofibrantGeneration
  homotopyCategoryEquivalenceClosed : M.homotopyCategoryEquivalence

theorem bar_cobar_model_category_closed_from_evidence
    (M : BarCobarModelCategoryPackage) (E : BarCobarModelCategoryEvidence M) :
    BarCobarModelCategoryClosed M :=
  And.intro E.barCobarAdjunctionClosed
    (And.intro E.modelStructureClosed
      (And.intro E.cofibrantGenerationClosed E.homotopyCategoryEquivalenceClosed))

end BarCobarConstructionsTheoremCanonicalLaneLean
end HautevilleHouse
