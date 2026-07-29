import canonicalLaneMathlib.AdmissibleClass
import GamesInvolvingGraphsCanonicalLaneLean.GraphGameCore
import GamesInvolvingGraphsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace GamesInvolvingGraphsCanonicalLaneLean

def ConstrainedGameClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_game_endgame (A : AdmissibleClass) : ConstrainedGameClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end HautevilleHouse
end GamesInvolvingGraphsCanonicalLaneLean
