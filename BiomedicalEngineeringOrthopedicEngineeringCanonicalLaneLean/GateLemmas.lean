import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiomedicalEngineeringOrthopedicEngineeringCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BiomedicalEngineeringOrthopedicEngineeringCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end BiomedicalEngineeringOrthopedicEngineeringCanonicalLaneLean
end HautevilleHouse