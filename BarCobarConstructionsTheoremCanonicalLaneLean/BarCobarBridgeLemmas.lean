import BarCobarConstructionsTheoremCanonicalLaneLean.BarCobarAdmissibleClass

namespace HautevilleHouse
namespace BarCobarConstructionsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BarCobarWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BarCobarConstructionsTheoremCanonicalLaneLean
end HautevilleHouse