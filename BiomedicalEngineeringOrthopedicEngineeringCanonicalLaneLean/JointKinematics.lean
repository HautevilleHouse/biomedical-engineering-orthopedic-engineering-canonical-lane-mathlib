import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringOrthopedicEngineeringCanonicalLaneLean

structure JointKinematicsPackage where
  jointAngles : Type u
  rangeOfMotion : Type v
  constraintForces : Type w
  angleContinuous : Prop
  motionSymmetric : Prop
  forcesBalanced : Prop

structure JointKinematicsEvidence (J : JointKinematicsPackage) where
  angleContinuousClosed : J.angleContinuous
  motionSymmetricClosed : J.motionSymmetric
  forcesBalancedClosed : J.forcesBalanced

def JointKinematicsClosed (J : JointKinematicsPackage) : Prop :=
  J.angleContinuous ∧ J.motionSymmetric ∧ J.forcesBalanced

theorem joint_kinematics_closed_from_evidence (J : JointKinematicsPackage)
    (E : JointKinematicsEvidence J) : JointKinematicsClosed J :=
  And.intro E.angleContinuousClosed
    (And.intro E.motionSymmetricClosed E.forcesBalancedClosed)

end BiomedicalEngineeringOrthopedicEngineeringCanonicalLaneLean
end HautevilleHouse