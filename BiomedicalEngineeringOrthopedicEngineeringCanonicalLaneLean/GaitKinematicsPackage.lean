import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringOrthopedicEngineeringCanonicalLaneLean

structure GaitKinematics where
  jointAngles : Type
  groundReactionForces : Prop
  muscleActivations : Prop
  walkingSpeed : Prop

def GaitKinematicsClosed (G : GaitKinematics) : Prop :=
  G.groundReactionForces ∧ G.muscleActivations ∧ G.walkingSpeed

end BiomedicalEngineeringOrthopedicEngineeringCanonicalLaneLean
end HautevilleHouse