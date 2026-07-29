import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesInvolvingGraphsCanonicalLaneLean

structure GameGraph where
  vertices : Type u
  edges : vertices → vertices → Prop
  symmetric : Prop
  symmetricTerm : symmetric
  irreflexive : Prop
  irreflexiveTerm : irreflexive
  finiteVertices : Prop
  finiteVerticesTerm : finiteVertices

structure GameOutcome where
  winner : String
  payoff : Option Float

structure GameState (G : GameGraph) where
  currentVertex : G.vertices
  history : List G.vertices
  isTerminal : Prop
  isTerminalTerm : isTerminal

structure GamePackage (G : GameGraph) where
  initialState : GameState G
  moves : GameState G → List (GameState G)
  payoff : GameState G → Float
  zeroSum : Prop
  zeroSumTerm : zeroSum

structure NashEquilibriumPackage (G : GameGraph) (P : GamePackage G) where
  mixedStrategies : Type v
  bestResponse : Prop
  existence : Prop
  existenceTerm : existence
  payoffMatrix : Prop
  payoffMatrixTerm : payoffMatrix

structure GameGraphEvidence (G : GameGraph) where
  symmetricClosed : G.symmetric
  irreflexiveClosed : G.irreflexive
  finiteVerticesClosed : G.finiteVertices

structure GamePackageEvidence {G : GameGraph} (P : GamePackage G) where
  zeroSumClosed : P.zeroSum
  initialStateClosed : P.isTerminal ?_  -- placeholder; adjusted below

end HautevilleHouse
end GamesInvolvingGraphsCanonicalLaneLean
