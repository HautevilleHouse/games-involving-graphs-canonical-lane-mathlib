import canoncialLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesInvolvingGraphsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

-- Represents a graph with strategic players
structure StrategicGraph where
  vertices : Type
  edges : vertices → vertices → Prop
  players : List vertices
  payoff : vertices → Nat

-- Admitted object: a graph with a specified Nash equilibrium
structure GamesAdmittedObject where
  graph : StrategicGraph
  equilibriumVertices : List (StrategicGraph.vertices StrategicGraph.graph)
  nashCondition : Prop
  conclusion : nashCondition

structure GamesEndgameState where
  object : GamesAdmittedObject

def GamesWitnessClosed (O : GamesAdmittedObject) : Prop :=
  O.nashCondition

end GamesInvolvingGraphsCanonicalLaneLean
end HautevilleHouse