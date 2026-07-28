import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringOrthopedicEngineeringCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure OrthopedicAdmittedObject where
  boneModel : Type
  jointModel : Type
  implantModel : Type
  tissueModel : Type
  gaitModel : Type
  conclusion : Prop

structure OrthopedicEndgameState where
  object : OrthopedicAdmittedObject

def OrthopedicWitnessClosed (O : OrthopedicAdmittedObject) : Prop :=
  O.conclusion

end BiomedicalEngineeringOrthopedicEngineeringCanonicalLaneLean
end HautevilleHouse