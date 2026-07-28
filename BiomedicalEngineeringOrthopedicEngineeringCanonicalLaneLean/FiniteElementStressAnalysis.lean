import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringOrthopedicEngineeringCanonicalLaneLean

structure FiniteElementModel where
  meshType : Type
  materialProperties : Prop
  boundaryConditions : Prop
  stressTensor : Prop
  strainEnergy : Prop

structure StressAnalysisEvidence (M : FiniteElementModel) where
  meshTypeClosed : M.meshType
  materialPropertiesClosed : M.materialProperties
  boundaryConditionsClosed : M.boundaryConditions
  stressTensorClosed : M.stressTensor
  strainEnergyClosed : M.strainEnergy

def StressAnalysisClosed (M : FiniteElementModel) : Prop :=
  M.meshType ∧ M.materialProperties ∧ M.boundaryConditions ∧ M.stressTensor ∧ M.strainEnergy

theorem stress_analysis_closed_from_evidence (M : FiniteElementModel) (E : StressAnalysisEvidence M) : StressAnalysisClosed M :=
  And.intro E.meshTypeClosed (And.intro E.materialPropertiesClosed (And.intro E.boundaryConditionsClosed (And.intro E.stressTensorClosed E.strainEnergyClosed)))

end BiomedicalEngineeringOrthopedicEngineeringCanonicalLaneLean
end HautevilleHouse