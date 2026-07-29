import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesInvolvingGraphsCanonicalLaneLean

structure GraphMinimaxPackage where
  players : Nat
  actions : Type u
  graphStructure : Type v
  payoffMatrix : Type w
  mixedStrategies : Type x
  minimaxValue : Prop
  graphConvexity : Prop

structure GraphMinimaxEvidence (P : GraphMinimaxPackage) where
  minimaxValueClosed : P.minimaxValue
  graphConvexityClosed : P.graphConvexity

def GraphMinimaxClosed (P : GraphMinimaxPackage) : Prop :=
  P.minimaxValue ∧ P.graphConvexity

theorem graph_minimax_closed_from_evidence (P : GraphMinimaxPackage)
    (E : GraphMinimaxEvidence P) : GraphMinimaxClosed P := by
  exact And.intro E.minimaxValueClosed E.graphConvexityClosed

end GamesInvolvingGraphsCanonicalLaneLean
end HautevilleHouse