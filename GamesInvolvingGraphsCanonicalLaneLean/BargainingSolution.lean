import GamesInvolvingGraphsCanonicalLaneLean.GraphGameCore

namespace HautevilleHouse
namespace GamesInvolvingGraphsCanonicalLaneLean

structure BargainingSolutionPackage {G : GameGraph} {P : GamePackage G} where
  threatPoint : GameState G
  nashProduct : Float → Float → Float
  bargainingSolution : Prop
  bargainingSolutionTerm : bargainingSolution
  axioms : Prop
  axiomsTerm : axioms

structure BargainingSolutionEvidence {G : GameGraph} {P : GamePackage G} (B : BargainingSolutionPackage G P) where
  bargainingSolutionClosed : B.bargainingSolution
  axiomsClosed : B.axioms

def BargainingSolutionClosed {G : GameGraph} {P : GamePackage G} (B : BargainingSolutionPackage G P) : Prop :=
  B.bargainingSolution ∧ B.axioms

theorem bargaining_solution_closed_from_evidence {G : GameGraph} {P : GamePackage G} (B : BargainingSolutionPackage G P) (E : BargainingSolutionEvidence B) : BargainingSolutionClosed B := by
  exact And.intro E.bargainingSolutionClosed E.axiomsClosed

end HautevilleHouse
end GamesInvolvingGraphsCanonicalLaneLean
