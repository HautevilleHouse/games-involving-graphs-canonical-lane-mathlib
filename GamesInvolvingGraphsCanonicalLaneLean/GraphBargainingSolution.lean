import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesInvolvingGraphsCanonicalLaneLean

structure GraphBargainingPackage where
  players : Nat
  actions : Type u
  graphStructure : Type v
  threatPoints : Type w
  bargainingSolution : Type x
  paretoOptimality : Prop
  graphSymmetry : Prop

structure GraphBargainingEvidence (P : GraphBargainingPackage) where
  paretoOptimalityClosed : P.paretoOptimality
  graphSymmetryClosed : P.graphSymmetry

def GraphBargainingClosed (P : GraphBargainingPackage) : Prop :=
  P.paretoOptimality ∧ P.graphSymmetry

theorem graph_bargaining_closed_from_evidence (P : GraphBargainingPackage)
    (E : GraphBargainingEvidence P) : GraphBargainingClosed P := by
  exact And.intro E.paretoOptimalityClosed E.graphSymmetryClosed

end GamesInvolvingGraphsCanonicalLaneLean
end HautevilleHouse