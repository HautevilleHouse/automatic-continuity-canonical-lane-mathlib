import canonicalLaneMathlib.AdmissibleClass
import AutomaticContinuityCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AutomaticContinuityCanonicalLaneLean

structure BanachSpaceContinuityPackage where
  sourceBanach : Type u
  targetBanach : Type v
  linearMap : sourceBanach → targetBanach
  continuityCondition : Prop
  closedGraph : Prop

structure BanachSpaceContinuityEvidence (P : BanachSpaceContinuityPackage) where
  continuityConditionClosed : P.continuityCondition
  closedGraphClosed : P.closedGraph

def BanachSpaceContinuityClosed (P : BanachSpaceContinuityPackage) : Prop :=
  P.continuityCondition ∧ P.closedGraph

theorem banach_space_continuity_closed_from_evidence
    (P : BanachSpaceContinuityPackage) (E : BanachSpaceContinuityEvidence P) :
    BanachSpaceContinuityClosed P := by
  exact And.intro E.continuityConditionClosed E.closedGraphClosed

end AutomaticContinuityCanonicalLaneLean
end HautevilleHouse