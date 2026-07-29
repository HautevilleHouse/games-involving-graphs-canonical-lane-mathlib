import GamesInvolvingGraphsCanonicalLaneLean.GameGraphGateLemmas

namespace HautevilleHouse
namespace GamesInvolvingGraphsCanonicalLaneLean

def ConstrainedGameGraphClosure (A : AdmissibleGameGraphClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_game_graph_endgame (A : AdmissibleGameGraphClass) :
    ConstrainedGameGraphClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GamesInvolvingGraphsCanonicalLaneLean
end HautevilleHouse
