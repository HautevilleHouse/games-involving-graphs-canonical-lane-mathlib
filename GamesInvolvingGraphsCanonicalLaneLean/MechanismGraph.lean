import canoncialLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesInvolvingGraphsCanonicalLaneLean

-- Graph representing a mechanism design problem
structure MechanismGraph where
  agents : Type
  types : agents → Type
  outcomes : Type
  preferences : agents → outcomes → ℝ
  graphStructure : agents → agents → Prop

-- Strategy-proofness condition
def strategyProof (M : MechanismGraph) (mechanism : (a : agents) → M.types a → M.outcomes) : Prop :=
  ∀ (a : agents) (t : M.types a) (t' : M.types a),
    M.preferences a (mechanism a t) ≥ M.preferences a (mechanism a t')

structure MechanismDesignPackage where
  graph : MechanismGraph
  mechanism : (a : agents) → graph.types a → graph.outcomes
  strategyProofCondition : strategyProof graph mechanism
  efficiencyCondition : Prop

structure MechanismDesignEvidence (M : MechanismDesignPackage) where
  graphClosed : M.graph.agents = Fin (M.graph.agents)
  strategyProofClosed : M.strategyProofCondition
  efficiencyClosed : M.efficiencyCondition

def MechanismDesignClosed (M : MechanismDesignPackage) : Prop :=
  M.graph.agents = Fin (M.graph.agents) ∧ M.strategyProofCondition ∧ M.efficiencyCondition

theorem mechanism_design_closed_from_evidence (M : MechanismDesignPackage) (E : MechanismDesignEvidence M) :
    MechanismDesignClosed M := by
  exact And.intro E.graphClosed (And.intro E.strategyProofClosed E.efficiencyClosed)

end GamesInvolvingGraphsCanonicalLaneLean
end HautevilleHouse