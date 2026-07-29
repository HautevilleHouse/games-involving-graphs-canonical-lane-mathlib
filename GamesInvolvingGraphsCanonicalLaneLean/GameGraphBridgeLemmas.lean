import GamesInvolvingGraphsCanonicalLaneLean.GameGraphAdmissibleClass

namespace HautevilleHouse
namespace GamesInvolvingGraphsCanonicalLaneLean

def bridgeClosed (A : AdmissibleGameGraphClass) : Prop :=
  GameGraphEquilibriumClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleGameGraphClass) :
    bridgeClosed A := by
  exact A.object.equilibriumExistsTerm

end GamesInvolvingGraphsCanonicalLaneLean
end HautevilleHouse
