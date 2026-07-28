import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiomedicalEngineeringOrthopedicEngineeringCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringOrthopedicEngineeringCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  OrthopedicWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

end BiomedicalEngineeringOrthopedicEngineeringCanonicalLaneLean
end HautevilleHouse