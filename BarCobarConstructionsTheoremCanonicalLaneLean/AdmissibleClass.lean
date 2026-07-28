import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BarCobarConstructionsTheoremCanonicalLaneLean

structure BarCobarSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure BarCobarAdmittedObject where
  space : BarCobarSpace
  barResolutionExists : Prop
  cobarResolutionExists : Prop
  equivalence : Prop
  conclusion : equivalence

structure AdmissibleClass where
  object : BarCobarAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def BarCobarWitnessClosed (O : BarCobarAdmittedObject) : Prop :=
  O.equivalence

end BarCobarConstructionsTheoremCanonicalLaneLean
end HautevilleHouse