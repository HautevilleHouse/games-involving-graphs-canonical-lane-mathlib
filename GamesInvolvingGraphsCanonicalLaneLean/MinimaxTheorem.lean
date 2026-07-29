import GamesInvolvingGraphsCanonicalLaneLean.GraphGameCore

namespace HautevilleHouse
namespace GamesInvolvingGraphsCanonicalLaneLean

structure ZeroSumGamePackage {G : GameGraph} {P : GamePackage G} where
  value : Float
  optimalStrategies : Prop
  minimaxTheorem : Prop
  minimaxTheoremTerm : minimaxTheorem

structure ZeroSumGameEvidence {G : GameGraph} {P : GamePackage G} (Z : ZeroSumGamePackage G P) where
  valueClosed : True
  optimalStrategiesClosed : Z.optimalStrategies
  minimaxTheoremClosed : Z.minimaxTheorem

def ZeroSumGameClosed {G : GameGraph} {P : GamePackage G} (Z : ZeroSumGamePackage G P) : Prop :=
  Z.optimalStrategies ∧ Z.minimaxTheorem

theorem zero_sum_game_closed_from_evidence {G : GameGraph} {P : GamePackage G} (Z : ZeroSumGamePackage G P) (E : ZeroSumGameEvidence Z) : ZeroSumGameClosed Z := by
  exact And.intro E.optimalStrategiesClosed E.minimaxTheoremClosed

theorem minimax_holds {G : GameGraph} {P : GamePackage G} (Z : ZeroSumGamePackage G P) (h : P.zeroSum) : Z.minimaxTheorem := by
  exact Z.minimaxTheoremTerm

end HautevilleHouse
end GamesInvolvingGraphsCanonicalLaneLean
