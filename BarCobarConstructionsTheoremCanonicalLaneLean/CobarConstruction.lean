import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BarCobarConstructionsTheoremCanonicalLaneLean.SimplicialComplex

namespace HautevilleHouse
namespace BarCobarConstructionsTheoremCanonicalLaneLean

structure CobarConstructionPackage (S : SimplicialComplexPackage) where
  chainComplex : Type u
  differential : Type u
  coaugmentation : Prop
  cocontractingHomotopy : Prop
  cobarComplexProperty : Prop

structure CobarConstructionEvidence {S : SimplicialComplexPackage}
    (C : CobarConstructionPackage S) where
  coaugmentationClosed : C.coaugmentation
  cocontractingHomotopyClosed : C.cocontractingHomotopy
  cobarComplexPropertyClosed : C.cobarComplexProperty

def CobarConstructionClosed {S : SimplicialComplexPackage}
    (C : CobarConstructionPackage S) : Prop :=
  C.coaugmentation ∧ C.cocontractingHomotopy ∧ C.cobarComplexProperty

theorem cobar_construction_closed_from_evidence {S : SimplicialComplexPackage}
    (C : CobarConstructionPackage S) (E : CobarConstructionEvidence C) :
    CobarConstructionClosed C := by
  exact And.intro E.coaugmentationClosed (And.intro E.cocontractingHomotopyClosed E.cobarComplexPropertyClosed)

end BarCobarConstructionsTheoremCanonicalLaneLean
end HautevilleHouse
