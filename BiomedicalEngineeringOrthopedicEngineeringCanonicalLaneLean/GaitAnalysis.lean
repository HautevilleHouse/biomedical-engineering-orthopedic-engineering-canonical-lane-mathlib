import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringOrthopedicEngineeringCanonicalLaneLean

structure GaitCyclePackage where
  stancePhase : Prop
  swingPhase : Prop
  groundReactionForce : Prop
  jointAngles : Prop
  muscleActivation : Prop

structure GaitCycleEvidence (G : GaitCyclePackage) where
  stancePhaseClosed : G.stancePhase
  swingPhaseClosed : G.swingPhase
  groundReactionForceClosed : G.groundReactionForce
  jointAnglesClosed : G.jointAngles
  muscleActivationClosed : G.muscleActivation

def GaitCycleClosed (G : GaitCyclePackage) : Prop :=
  G.stancePhase ∧ G.swingPhase ∧ G.groundReactionForce ∧ G.jointAngles ∧ G.muscleActivation

theorem gait_cycle_closed_from_evidence (G : GaitCyclePackage) (E : GaitCycleEvidence G) : GaitCycleClosed G := by
  exact And.intro E.stancePhaseClosed (And.intro E.swingPhaseClosed (And.intro E.groundReactionForceClosed (And.intro E.jointAnglesClosed E.muscleActivationClosed)))

end BiomedicalEngineeringOrthopedicEngineeringCanonicalLaneLean
end HautevilleHouse