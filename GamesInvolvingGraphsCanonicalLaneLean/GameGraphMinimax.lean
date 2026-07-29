import GamesInvolvingGraphsCanonicalLaneLean.GameGraphNashEquilibrium

namespace HautevilleHouse
namespace GamesInvolvingGraphsCanonicalLaneLean

structure MinimaxPackage {G : GameGraphObject} (N : NashEquilibriumPackage G) where
  zeroSumGame : Prop
  maximinValue : Prop
  minimaxTheorem : Prop
  saddlePoint : Prop

structure MinimaxEvidence {G : GameGraphObject} {N : NashEquilibriumPackage G} (M : MinimaxPackage N) where
  zeroSumGameClosed : M.zeroSumGame
  maximinValueClosed : M.maximinValue
  minimaxTheoremClosed : M.minimaxTheorem
  saddlePointClosed : M.saddlePoint

def MinimaxClosed {G : GameGraphObject} {N : NashEquilibriumPackage G} (M : MinimaxPackage N) : Prop :=
  M.zeroSumGame ∧ M.maximinValue ∧ M.minimaxTheorem ∧ M.saddlePoint

theorem minimax_closed_from_evidence
    {G : GameGraphObject} {N : NashEquilibriumPackage G}
    (M : MinimaxPackage N) (E : MinimaxEvidence M) : MinimaxClosed M := by
  exact And.intro E.zeroSumGameClosed
    (And.intro E.maximinValueClosed
      (And.intro E.minimaxTheoremClosed E.saddlePointClosed))

end GamesInvolvingGraphsCanonicalLaneLean
end HautevilleHouse
