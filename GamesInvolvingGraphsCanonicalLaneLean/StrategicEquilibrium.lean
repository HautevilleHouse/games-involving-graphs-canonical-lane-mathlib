import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesInvolvingGraphsCanonicalLaneLean

structure StrategicFormGame where
  PlayerSet : Type u
  ActionProfile : Type v
  PayoffFunction : ActionProfile → ℝ
  InductionClosed : Prop
  InductionClosedTerm : InductionClosed

structure NashEquilibriumState where
  Game : StrategicFormGame
  EquilibriumProfile : Game.ActionProfile
  NoProfitableDeviation : Prop
  DeviationClosed : Prop
  DeviationClosedTerm : DeviationClosed

end GamesInvolvingGraphsCanonicalLaneLean
end HautevilleHouse