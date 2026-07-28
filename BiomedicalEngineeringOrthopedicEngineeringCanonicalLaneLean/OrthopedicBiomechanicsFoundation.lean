import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringOrthopedicEngineeringCanonicalLaneLean

structure OrthopedicBiomechanicsFoundationPackage where
  boneMechanics : BoneMaterialPackage
  implantInterface : ImplantInterfacePackage
  gaitAnalysis : GaitCyclePackage
  prosthesisDesign : ProsthesisDesignPackage
  boneMechanicsEvidence : BoneMaterialEvidence boneMechanics
  implantInterfaceEvidence : ImplantInterfaceEvidence implantInterface
  gaitAnalysisEvidence : GaitCycleEvidence gaitAnalysis
  prosthesisDesignEvidence : ProsthesisDesignEvidence prosthesisDesign

def OrthopedicBiomechanicsFoundationClosed (F : OrthopedicBiomechanicsFoundationPackage) : Prop :=
  BoneMaterialClosed F.boneMechanics ∧ ImplantInterfaceClosed F.implantInterface ∧ GaitCycleClosed F.gaitAnalysis ∧ ProsthesisDesignClosed F.prosthesisDesign

theorem orthopedic_biomechanics_foundation_closed_from_evidence (F : OrthopedicBiomechanicsFoundationPackage) : OrthopedicBiomechanicsFoundationClosed F := by
  have h1 : BoneMaterialClosed F.boneMechanics := bone_material_closed_from_evidence F.boneMechanics F.boneMechanicsEvidence
  have h2 : ImplantInterfaceClosed F.implantInterface := implant_interface_closed_from_evidence F.implantInterface F.implantInterfaceEvidence
  have h3 : GaitCycleClosed F.gaitAnalysis := gait_cycle_closed_from_evidence F.gaitAnalysis F.gaitAnalysisEvidence
  have h4 : ProsthesisDesignClosed F.prosthesisDesign := prosthesis_design_closed_from_evidence F.prosthesisDesign F.prosthesisDesignEvidence
  exact And.intro h1 (And.intro h2 (And.intro h3 h4))

end BiomedicalEngineeringOrthopedicEngineeringCanonicalLaneLean
end HautevilleHouse