import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesInvolvingGraphsCanonicalLaneLean

structure AdmissibleClass where
  object : GamesInvolvingGraphsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GamesInvolvingGraphsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GamesInvolvingGraphsCanonicalLaneLean
end HautevilleHouse