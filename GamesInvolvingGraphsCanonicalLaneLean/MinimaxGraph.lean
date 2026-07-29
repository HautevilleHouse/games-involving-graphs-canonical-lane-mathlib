import canoncialLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesInvolvingGraphsCanonicalLaneLean

-- Zero-sum game on a graph
structure ZeroSumGameGraph where
  vertices : Type
  edges : vertices → vertices → Prop
  rowPlayerPayoffs : vertices → vertices → ℝ

-- Saddle point condition
def saddlePoint (g : ZeroSumGameGraph) (r : vertices) (c : vertices) : Prop :=
  (∀ r', g.rowPlayerPayoffs r' c ≤ g.rowPlayerPayoffs r c) ∧
  (∀ c', g.rowPlayerPayoffs r c ≤ g.rowPlayerPayoffs r c')

structure MinimaxTheoremPackage where
  game : ZeroSumGameGraph
  mixedStrategiesRow : Type
  mixedStrategiesCol : Type
  minimaxEquality : Prop
  saddleExists : ∃ (r : vertices) (c : vertices), saddlePoint game r c

structure MinimaxEvidence (M : MinimaxTheoremPackage) where
  gameClosed : M.game.edges = λ _ _ => True
  mixedStrategiesRowClosed : true
  mixedStrategiesColClosed : true
  minimaxEqualityClosed : M.minimaxEquality
  saddleExistsClosed : M.saddleExists

def MinimaxClosed (M : MinimaxTheoremPackage) : Prop :=
  M.game.edges = λ _ _ => True ∧ M.minimaxEquality ∧ M.saddleExists

theorem minimax_closed_from_evidence (M : MinimaxTheoremPackage) (E : MinimaxEvidence M) :
    MinimaxClosed M := by
  exact And.intro E.gameClosed (And.intro E.minimaxEqualityClosed E.saddleExistsClosed)

end GamesInvolvingGraphsCanonicalLaneLean
end HautevilleHouse