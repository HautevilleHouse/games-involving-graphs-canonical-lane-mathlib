import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesInvolvingGraphsCanonicalLaneLean

inductive GameNode : Type u where
  | terminal (payoff : ℝ)
  | decision (player : String) (children : List GameNode)

structure ExtensiveFormGame where
  Root : GameNode
  InformationSets : Set (Set GameNode)
  PerfectRecall : Prop
  RecallClosed : Prop
  RecallClosedTerm : RecallClosed

end GamesInvolvingGraphsCanonicalLaneLean
end HautevilleHouse