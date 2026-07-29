import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesInvolvingGraphsCanonicalLaneLean

structure GameGraph where
  VertexSet : Type u
  EdgeSet : Set (VertexSet × VertexSet)
  Labeling : VertexSet → String
  GraphClosure : Prop
  GraphClosureTerm : GraphClosure

structure InducedSubgame where
  OriginalGame : GameGraph
  SubsetVertices : Set (OriginalGame.VertexSet)
  SubgraphInduced : Prop
  SubgameClosure : Prop
  SubgameClosureTerm : SubgameClosure

end GamesInvolvingGraphsCanonicalLaneLean
end HautevilleHouse