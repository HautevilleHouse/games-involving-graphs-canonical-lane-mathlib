import canoncialLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesInvolvingGraphsCanonicalLaneLean

-- Graph representing a bargaining network
structure BargainingGraph where
  vertices : Type
  edges : vertices → vertices → Prop
  valuations : vertices → ℝ
  surplus : ℝ

-- Nash bargaining solution condition
def nashBargainingSolution (g : BargainingGraph) (payoffs : vertices → ℝ) : Prop :=
  (∀ v, payoffs v ≥ 0) ∧
  (∑ v, payoffs v = g.surplus) ∧
  (∀ alternative : vertices → ℝ, (∀ v, alternative v ≥ 0) → (∑ v, alternative v = g.surplus) →
    ∏ v, (alternative v) ^ (1 / Real.sqrt (Real.toNat (g.edges v)))) ≤ ∏ v, (payoffs v) ^ (1 / Real.sqrt (Real.toNat (g.edges v))))

structure BargainingSolutionPackage where
  graph : BargainingGraph
  solution : vertices → ℝ
  solutionIsNash : nashBargainingSolution graph solution

structure BargainingSolutionEvidence (B : BargainingSolutionPackage) where
  graphClosed : B.graph.vertices = Set.univ
  solutionClosed : B.solutionIsNash

def BargainingSolutionClosed (B : BargainingSolutionPackage) : Prop :=
  B.graph.vertices = Set.univ ∧ B.solutionIsNash

theorem bargaining_solution_closed_from_evidence (B : BargainingSolutionPackage) (E : BargainingSolutionEvidence B) :
    BargainingSolutionClosed B := by
  exact And.intro E.graphClosed E.solutionClosed

end GamesInvolvingGraphsCanonicalLaneLean
end HautevilleHouse