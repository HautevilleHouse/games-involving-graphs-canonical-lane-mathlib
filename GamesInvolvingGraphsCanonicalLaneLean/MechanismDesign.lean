import GamesInvolvingGraphsCanonicalLaneLean.GraphGameCore

namespace HautevilleHouse
namespace GamesInvolvingGraphsCanonicalLaneLean

structure MechanismDesignPackage {G : GameGraph} {P : GamePackage G} where
  socialChoiceFunction : Type u
  incentiveCompatibility : Prop
  incentiveCompatibilityTerm : incentiveCompatibility
  revelationPrinciple : Prop
  revelationPrincipleTerm : revelationPrinciple
  efficiency : Prop
  efficiencyTerm : efficiency

structure MechanismDesignEvidence {G : GameGraph} {P : GamePackage G} (M : MechanismDesignPackage G P) where
  incentiveCompatibilityClosed : M.incentiveCompatibility
  revelationPrincipleClosed : M.revelationPrinciple
  efficiencyClosed : M.efficiency

def MechanismDesignClosed {G : GameGraph} {P : GamePackage G} (M : MechanismDesignPackage G P) : Prop :=
  M.incentiveCompatibility ∧ M.revelationPrinciple ∧ M.efficiency

theorem mechanism_design_closed_from_evidence {G : GameGraph} {P : GamePackage G} (M : MechanismDesignPackage G P) (E : MechanismDesignEvidence M) : MechanismDesignClosed M := by
  exact And.intro E.incentiveCompatibilityClosed (And.intro E.revelationPrincipleClosed E.efficiencyClosed)

end HautevilleHouse
end GamesInvolvingGraphsCanonicalLaneLean
