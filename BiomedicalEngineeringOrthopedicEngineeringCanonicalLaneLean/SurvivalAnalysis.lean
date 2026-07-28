import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringOrthopedicEngineeringCanonicalLaneLean

structure SurvivalAnalysisPackage where
  hazardFunction : Prop
  survivalCurve : Prop
  censoringMechanism : Prop
  coxModel : Prop
  proportionalHazards : Prop
  modelConverged : Prop

structure SurvivalAnalysisEvidence (S : SurvivalAnalysisPackage) where
  hazardFunctionClosed : S.hazardFunction
  survivalCurveClosed : S.survivalCurve
  censoringMechanismClosed : S.censoringMechanism
  coxModelClosed : S.coxModel
  proportionalHazardsClosed : S.proportionalHazards
  modelConvergedClosed : S.modelConverged

def SurvivalAnalysisClosed (S : SurvivalAnalysisPackage) : Prop :=
  S.hazardFunction ∧ S.survivalCurve ∧ S.censoringMechanism ∧ S.coxModel ∧ S.proportionalHazards ∧ S.modelConverged

theorem survival_analysis_closed_from_evidence (S : SurvivalAnalysisPackage) (E : SurvivalAnalysisEvidence S) :
    SurvivalAnalysisClosed S := by
  exact And.intro E.hazardFunctionClosed
    (And.intro E.survivalCurveClosed
      (And.intro E.censoringMechanismClosed
        (And.intro E.coxModelClosed
          (And.intro E.proportionalHazardsClosed E.modelConvergedClosed))))

end BiomedicalEngineeringOrthopedicEngineeringCanonicalLaneLean
end HautevilleHouse