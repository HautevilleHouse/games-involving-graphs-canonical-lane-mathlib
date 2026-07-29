import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesInvolvingGraphsCanonicalLaneLean

structure GameGraphObject where
  graph : Type u
  vertices : graph → Type v
  edges : graph → Type w
  strategy : graph → Type x
  payoff : graph → Type y
  equilibriumExists : Prop
  equilibriumExistsTerm : equilibriumExists

structure AdmissibleGameGraphClass where
  object : GameGraphObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleGameGraphClass) : Prop :=
  GameGraphEquilibriumClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GamesInvolvingGraphsCanonicalLaneLean
end HautevilleHouse
