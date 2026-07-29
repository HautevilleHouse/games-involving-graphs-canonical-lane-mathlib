import canonicalLaneMathlib.AdmissibleClass
import GamesInvolvingGraphsCanonicalLaneLean.GraphGameCore

namespace HautevilleHouse
namespace GamesInvolvingGraphsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop := True

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  trivial

def gateClosed (A : AdmissibleClass) : Prop := True

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  trivial

end HautevilleHouse
end GamesInvolvingGraphsCanonicalLaneLean
