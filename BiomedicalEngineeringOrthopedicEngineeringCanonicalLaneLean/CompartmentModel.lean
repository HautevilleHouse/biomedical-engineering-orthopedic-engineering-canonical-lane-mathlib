import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringOrthopedicEngineeringCanonicalLaneLean

structure CompartmentModelPackage where
  numCompartments : Nat
  transferRates : Array (Array ℝ)
  initialConditions : Array ℝ
  modelIdentified : Prop
  solutionExists : Prop

structure CompartmentModelEvidence (C : CompartmentModelPackage) where
  modelIdentifiedClosed : C.modelIdentified
  solutionExistsClosed : C.solutionExists

def CompartmentModelClosed (C : CompartmentModelPackage) : Prop :=
  C.modelIdentified ∧ C.solutionExists

theorem compartment_model_closed_from_evidence (C : CompartmentModelPackage) (E : CompartmentModelEvidence C) :
    CompartmentModelClosed C := by
  exact And.intro E.modelIdentifiedClosed E.solutionExistsClosed

end BiomedicalEngineeringOrthopedicEngineeringCanonicalLaneLean
end HautevilleHouse