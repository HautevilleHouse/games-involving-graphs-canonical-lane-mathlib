import GamesInvolvingGraphsCanonicalLaneLean.GameGraphMinimax

namespace HautevilleHouse
namespace GamesInvolvingGraphsCanonicalLaneLean

structure BargainingPackage {G : GameGraphObject} {N : NashEquilibriumPackage G}
    (M : MinimaxPackage N) where
  feasiblePayoffs : Prop
  disagreementPoint : Prop
  nashBargainingSolution : Prop
  fairnessAxioms : Prop

structure BargainingEvidence {G : GameGraphObject} {N : NashEquilibriumPackage G}
    {M : MinimaxPackage N} (B : BargainingPackage M) where
  feasiblePayoffsClosed : B.feasiblePayoffs
  disagreementPointClosed : B.disagreementPoint
  nashBargainingSolutionClosed : B.nashBargainingSolution
  fairnessAxiomsClosed : B.fairnessAxioms

def BargainingClosed {G : GameGraphObject} {N : NashEquilibriumPackage G}
    {M : MinimaxPackage N} (B : BargainingPackage M) : Prop :=
  B.feasiblePayoffs ∧ B.disagreementPoint ∧ B.nashBargainingSolution ∧ B.fairnessAxioms

theorem bargaining_closed_from_evidence
    {G : GameGraphObject} {N : NashEquilibriumPackage G}
    {M : MinimaxPackage N} (B : BargainingPackage M) (E : BargainingEvidence B) :
    BargainingClosed B := by
  exact And.intro E.feasiblePayoffsClosed
    (And.intro E.disagreementPointClosed
      (And.intro E.nashBargainingSolutionClosed E.fairnessAxiomsClosed))

end GamesInvolvingGraphsCanonicalLaneLean
end HautevilleHouse
