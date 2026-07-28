import BarCobarConstructionsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BarCobarConstructionsTheoremCanonicalLaneLean

structure BarCobarConstructionPackage where
  barComplex : Prop
  cobarComplex : Prop
  resolutionProperty : Prop
  equivalenceProperty : Prop
  persistenceUnderSurgery : Prop

structure BarCobarConstructionEvidence (P : BarCobarConstructionPackage) where
  barComplexClosed : P.barComplex
  cobarComplexClosed : P.cobarComplex
  resolutionPropertyClosed : P.resolutionProperty
  equivalencePropertyClosed : P.equivalenceProperty
  persistenceUnderSurgeryClosed : P.persistenceUnderSurgery

def BarCobarConstructionClosed (P : BarCobarConstructionPackage) : Prop :=
  P.barComplex ∧ P.cobarComplex ∧ P.resolutionProperty ∧ P.equivalenceProperty ∧ P.persistenceUnderSurgery

theorem bar_cobar_construction_closed_from_evidence
    (P : BarCobarConstructionPackage) (E : BarCobarConstructionEvidence P) :
    BarCobarConstructionClosed P :=
  by
    exact And.intro E.barComplexClosed
      (And.intro E.cobarComplexClosed
        (And.intro E.resolutionPropertyClosed
          (And.intro E.equivalencePropertyClosed E.persistenceUnderSurgeryClosed)))

end BarCobarConstructionsTheoremCanonicalLaneLean
end HautevilleHouse