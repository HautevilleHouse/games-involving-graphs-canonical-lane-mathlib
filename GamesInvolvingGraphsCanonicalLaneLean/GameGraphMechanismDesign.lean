import GamesInvolvingGraphsCanonicalLaneLean.GameGraphBargaining

namespace HautevilleHouse
namespace GamesInvolvingGraphsCanonicalLaneLean

structure MechanismDesignPackage {G : GameGraphObject} {N : NashEquilibriumPackage G}
    {M : MinimaxPackage N} {B : BargainingPackage M} where
  revelationPrinciple : Prop
  incentiveCompatibility : Prop
  individualRationality : Prop
  efficiency : Prop

structure MechanismDesignEvidence {G : GameGraphObject} {N : NashEquilibriumPackage G}
    {M : MinimaxPackage N} {B : BargainingPackage M}
    (D : MechanismDesignPackage N M B) where
  revelationPrincipleClosed : D.revelationPrinciple
  incentiveCompatibilityClosed : D.incentiveCompatibility
  individualRationalityClosed : D.individualRationality
  efficiencyClosed : D.efficiency

def MechanismDesignClosed {G : GameGraphObject} {N : NashEquilibriumPackage G}
    {M : MinimaxPackage N} {B : BargainingPackage M}
    (D : MechanismDesignPackage N M B) : Prop :=
  D.revelationPrinciple ∧ D.incentiveCompatibility ∧ D.individualRationality ∧ D.efficiency

theorem mechanism_design_closed_from_evidence
    {G : GameGraphObject} {N : NashEquilibriumPackage G}
    {M : MinimaxPackage N} {B : BargainingPackage M}
    (D : MechanismDesignPackage N M B) (E : MechanismDesignEvidence D) :
    MechanismDesignClosed D := by
  exact And.intro E.revelationPrincipleClosed
    (And.intro E.incentiveCompatibilityClosed
      (And.intro E.individualRationalityClosed E.efficiencyClosed))

end GamesInvolvingGraphsCanonicalLaneLean
end HautevilleHouse
