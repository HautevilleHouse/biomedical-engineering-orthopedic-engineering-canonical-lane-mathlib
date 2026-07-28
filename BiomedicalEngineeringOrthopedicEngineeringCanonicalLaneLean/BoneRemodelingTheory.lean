import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringOrthopedicEngineeringCanonicalLaneLean

structure BoneRemodelingModel where
  mechanicalStimulus : Prop
  resorptionRate : Prop
  formationRate : Prop
  densityEvolution : Prop

def BoneRemodelingClosed (B : BoneRemodelingModel) : Prop :=
  B.mechanicalStimulus ∧ B.resorptionRate ∧ B.formationRate ∧ B.densityEvolution

end BiomedicalEngineeringOrthopedicEngineeringCanonicalLaneLean
end HautevilleHouse