import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BarCobarConstructionsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BarCobarConstructionsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BarCobarResolutionClosed A.object.R

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.resolutionClosed

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BarCobarConstructionsTheoremCanonicalLaneLean
end HautevilleHouse
