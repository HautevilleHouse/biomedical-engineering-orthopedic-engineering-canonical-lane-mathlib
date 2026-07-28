import canonicalLaneMathlib.AdmissibleClass
import BiomedicalEngineeringOrthopedicEngineeringCanonicalLaneLean.ImplantInterface

namespace HautevilleHouse
namespace BiomedicalEngineeringOrthopedicEngineeringCanonicalLaneLean

structure HealingModelPackage {B : BoneMechanicsPackage}
    (I : ImplantInterfacePackage B) where
  fractureHealingStages : Type u
  callusFormation : Prop
  revascularization : Prop
  boneRemodeling : Prop

structure HealingModelEvidence {B : BoneMechanicsPackage}
    {I : ImplantInterfacePackage B} (H : HealingModelPackage I) where
  callusFormationClosed : H.callusFormation
  revascularizationClosed : H.revascularization
  boneRemodelingClosed : H.boneRemodeling

def HealingModelClosed {B : BoneMechanicsPackage}
    {I : ImplantInterfacePackage B} (H : HealingModelPackage I) : Prop :=
  H.callusFormation ∧ H.revascularization ∧ H.boneRemodeling

theorem healing_model_closed_from_evidence
    {B : BoneMechanicsPackage} {I : ImplantInterfacePackage B}
    (H : HealingModelPackage I) (E : HealingModelEvidence H) :
    HealingModelClosed H := by
  exact And.intro E.callusFormationClosed
    (And.intro E.revascularizationClosed E.boneRemodelingClosed)

end BiomedicalEngineeringOrthopedicEngineeringCanonicalLaneLean
end HautevilleHouse