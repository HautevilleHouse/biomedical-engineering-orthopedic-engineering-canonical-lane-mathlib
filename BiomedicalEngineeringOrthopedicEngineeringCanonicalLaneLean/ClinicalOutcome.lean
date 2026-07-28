import canonicalLaneMathlib.AdmissibleClass
import BiomedicalEngineeringOrthopedicEngineeringCanonicalLaneLean.HealingModel

namespace HautevilleHouse
namespace BiomedicalEngineeringOrthopedicEngineeringCanonicalLaneLean

structure ClinicalOutcomePackage {B : BoneMechanicsPackage}
    {I : ImplantInterfacePackage B} {H : HealingModelPackage I} where
  painScore : Prop
  functionalScore : Prop
  radiographicUnion : Prop
  implantSurvival : Prop

structure ClinicalOutcomeEvidence {B : BoneMechanicsPackage}
    {I : ImplantInterfacePackage B} {H : HealingModelPackage I}
    (C : ClinicalOutcomePackage) where
  painScoreClosed : C.painScore
  functionalScoreClosed : C.functionalScore
  radiographicUnionClosed : C.radiographicUnion
  implantSurvivalClosed : C.implantSurvival

def ClinicalOutcomeClosed {B : BoneMechanicsPackage}
    {I : ImplantInterfacePackage B} {H : HealingModelPackage I}
    (C : ClinicalOutcomePackage) : Prop :=
  C.painScore ∧ C.functionalScore ∧ C.radiographicUnion ∧ C.implantSurvival

theorem clinical_outcome_closed_from_evidence
    {B : BoneMechanicsPackage} {I : ImplantInterfacePackage B}
    {H : HealingModelPackage I} (C : ClinicalOutcomePackage)
    (E : ClinicalOutcomeEvidence C) : ClinicalOutcomeClosed C := by
  exact And.intro E.painScoreClosed
    (And.intro E.functionalScoreClosed
      (And.intro E.radiographicUnionClosed E.implantSurvivalClosed))

end BiomedicalEngineeringOrthopedicEngineeringCanonicalLaneLean
end HautevilleHouse