import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesInvolvingGraphsCanonicalLaneLean

structure GameGraphNashPackage where
  players : Nat
  actions : Type u
  graphStructure : Type v
  payoffFunctions : Type w
  strategies : Type x
  nashEquilibrium : Prop
  graphCompatibility : Prop

structure GameGraphNashEvidence (P : GameGraphNashPackage) where
  nashEquilibriumClosed : P.nashEquilibrium
  graphCompatibilityClosed : P.graphCompatibility

def GameGraphNashClosed (P : GameGraphNashPackage) : Prop :=
  P.nashEquilibrium ∧ P.graphCompatibility

theorem game_graph_nash_closed_from_evidence (P : GameGraphNashPackage)
    (E : GameGraphNashEvidence P) : GameGraphNashClosed P := by
  exact And.intro E.nashEquilibriumClosed E.graphCompatibilityClosed

end GamesInvolvingGraphsCanonicalLaneLean
end HautevilleHouse