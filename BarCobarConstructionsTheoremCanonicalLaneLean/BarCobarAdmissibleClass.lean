import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BarCobarConstructionsTheoremCanonicalLaneLean

structure BarCobarSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure BarCobarAdmittedObject where
  space : BarCobarSpace
  dimension : ℕ
  hasMorseFunction : Prop
  framedAttachingMaps : Prop
  conclusion : hasMorseFunction ∧ framedAttachingMaps

structure BarCobarEndgameState where
  object : BarCobarAdmittedObject

def BarCobarWitnessClosed (O : BarCobarAdmittedObject) : Prop :=
  O.hasMorseFunction ∧ O.framedAttachingMaps

end BarCobarConstructionsTheoremCanonicalLaneLean
end HautevilleHouse