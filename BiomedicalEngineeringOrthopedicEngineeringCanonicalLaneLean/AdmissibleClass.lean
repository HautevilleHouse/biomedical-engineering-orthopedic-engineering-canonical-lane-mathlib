import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiomedicalEngineeringOrthopedicEngineeringCanonicalLaneLean.OrthopedicEngineerObjects

namespace HautevilleHouse
namespace BiomedicalEngineeringOrthopedicEngineeringCanonicalLaneLean

structure AdmissibleClass where
  object : OrthopedicAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  OrthopedicWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BiomedicalEngineeringOrthopedicEngineeringCanonicalLaneLean
end HautevilleHouse