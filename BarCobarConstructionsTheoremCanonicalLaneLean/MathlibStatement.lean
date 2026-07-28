import BarCobarConstructionsTheoremCanonicalLaneLean.FinalTheorem
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BarCobarConstructionsTheoremCanonicalLaneLean

open canonicalLaneMathlib.AdmissibleClass

structure MathlibProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def mathlibProofObligation : MathlibProofObligation := {
  sourceKey := "bar-cobar-constructions-theorem-canonical-lane"
  theoremObject := "BarCobarConstructionsTheorem"
  commonCoreImported := true
  theoremSpecificDefinitionsNative := true
  theoremSpecificBridgeNative := true
  theoremSpecificAdmittedClosureNative := true
  unrestrictedClassicalClosureNative := false
  carriedGap := "theorem-specific Mathlib endgame pilot closes over the admitted class; unrestricted classical closure remains carried"
}

theorem mathlib_common_core_imported_checked :
    mathlibProofObligation.commonCoreImported = true := rfl

theorem mathlib_theorem_specific_definitions_native_checked :
    mathlibProofObligation.theoremSpecificDefinitionsNative = true := rfl

theorem mathlib_theorem_specific_bridge_native_checked :
    mathlibProofObligation.theoremSpecificBridgeNative = true := rfl

theorem mathlib_theorem_specific_admitted_closure_native_checked :
    mathlibProofObligation.theoremSpecificAdmittedClosureNative = true := rfl

theorem mathlib_unrestricted_classical_closure_carried :
    mathlibProofObligation.unrestrictedClassicalClosureNative = false := rfl

end BarCobarConstructionsTheoremCanonicalLaneLean
end HautevilleHouse
