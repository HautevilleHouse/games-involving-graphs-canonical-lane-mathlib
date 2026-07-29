import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GamesInvolvingGraphsCanonicalLaneLean

structure GraphGameMatroid where
  EdgeSet : Type u
  CycleMatroid : Prop
  CocircuitMatroid : Prop
  DualMatroid : Prop
  MatroidClosure : Prop
  CycleMatroidTerm : CycleMatroid
  CocircuitMatroidTerm : CocircuitMatroid
  DualMatroidTerm : DualMatroid
  MatroidClosureTerm : MatroidClosure

end GamesInvolvingGraphsCanonicalLaneLean
end HautevilleHouse