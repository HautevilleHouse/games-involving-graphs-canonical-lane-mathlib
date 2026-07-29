import GamesInvolvingGraphsCanonicalLaneLean.GameGraphBridgeLemmas

namespace HautevilleHouse
namespace GamesInvolvingGraphsCanonicalLaneLean

def gateClosed (A : AdmissibleGameGraphClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleGameGraphClass) :
    gateClosed A := by
  exact A.gateWitness

end GamesInvolvingGraphsCanonicalLaneLean
end HautevilleHouse
