import GamesInvolvingGraphsCanonicalLaneLean.GraphGameCore

namespace HautevilleHouse
namespace GamesInvolvingGraphsCanonicalLaneLean

structure NashEquilibriumPackage {G : GameGraph} {P : GamePackage G} where
  mixedStrategies : Type v
  bestResponse : Prop
  existence : Prop
  existenceTerm : existence
  payoffMatrix : Prop
  payoffMatrixTerm : payoffMatrix

structure NashEquilibriumEvidence {G : GameGraph} {P : GamePackage G} (N : NashEquilibriumPackage G P) where
  bestResponseClosed : N.bestResponse
  existenceClosed : N.existence
  payoffMatrixClosed : N.payoffMatrix

def NashEquilibriumClosed {G : GameGraph} {P : GamePackage G} (N : NashEquilibriumPackage G P) : Prop :=
  N.bestResponse ∧ N.existence ∧ N.payoffMatrix

theorem nash_equilibrium_closed_from_evidence {G : GameGraph} {P : GamePackage G} (N : NashEquilibriumPackage G P) (E : NashEquilibriumEvidence N) : NashEquilibriumClosed N := by
  exact And.intro E.bestResponseClosed (And.intro E.existenceClosed E.payoffMatrixClosed)

structure NashEquilibriumAdmissibleClass (G : GameGraph) where
  equilibrium : NashEquilibriumPackage G P
  equilibriumEvidence : NashEquilibriumEvidence equilibrium
  -- Additional fields for bridge/gate
  strategicGame : Prop
  strategicGameTerm : strategicGame

def nashEquilibriumBridgeClosed (A : NashEquilibriumAdmissibleClass G) : Prop :=
  A.strategicGame

def nashEquilibriumGateClosed (A : NashEquilibriumAdmissibleClass G) : Prop :=
  A.equilibrium.existence

end HautevilleHouse
end GamesInvolvingGraphsCanonicalLaneLean
