import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesInvolvingGraphsCanonicalLaneLean

structure GraphGameNashEquilibriumPackage where
  graph : Type u
  players : Nat
  strategyProfiles : Set (Type u -> List Nat)
  payoffFunctions : List (Type u -> List Nat -> Float)
  nashEquilibriumExists : Prop
  bestResponseCondition : Prop

structure GraphGameNashEquilibriumEvidence (P : GraphGameNashEquilibriumPackage) where
  nashEquilibriumExistsClosed : P.nashEquilibriumExists
  bestResponseConditionClosed : P.bestResponseCondition

def GraphGameNashEquilibriumClosed (P : GraphGameNashEquilibriumPackage) : Prop :=
  P.nashEquilibriumExists ∧ P.bestResponseCondition

theorem graph_game_nash_equilibrium_closed_from_evidence
    (P : GraphGameNashEquilibriumPackage) (E : GraphGameNashEquilibriumEvidence P) :
    GraphGameNashEquilibriumClosed P := by
  exact And.intro E.nashEquilibriumExistsClosed E.bestResponseConditionClosed

end GamesInvolvingGraphsCanonicalLaneLean
end HautevilleHouse