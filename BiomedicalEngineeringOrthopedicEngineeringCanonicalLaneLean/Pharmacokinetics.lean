import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringOrthopedicEngineeringCanonicalLaneLean

structure PharmacokineticsPackage where
  absorptionModel : Prop
  distributionVolume : Prop
  clearance : Prop
  halfLife : Prop
  bioavailability : Prop
  modelValidated : Prop

structure PharmacokineticsEvidence (P : PharmacokineticsPackage) where
  absorptionModelClosed : P.absorptionModel
  distributionVolumeClosed : P.distributionVolume
  clearanceClosed : P.clearance
  halfLifeClosed : P.halfLife
  bioavailabilityClosed : P.bioavailability
  modelValidatedClosed : P.modelValidated

def PharmacokineticsClosed (P : PharmacokineticsPackage) : Prop :=
  P.absorptionModel ∧ P.distributionVolume ∧ P.clearance ∧ P.halfLife ∧ P.bioavailability ∧ P.modelValidated

theorem pharmacokinetics_closed_from_evidence (P : PharmacokineticsPackage) (E : PharmacokineticsEvidence P) :
    PharmacokineticsClosed P := by
  exact And.intro E.absorptionModelClosed
    (And.intro E.distributionVolumeClosed
      (And.intro E.clearanceClosed
        (And.intro E.halfLifeClosed
          (And.intro E.bioavailabilityClosed E.modelValidatedClosed))))

end BiomedicalEngineeringOrthopedicEngineeringCanonicalLaneLean
end HautevilleHouse