import canonicalLaneMathlib.AdmissibleClass
import AutomaticContinuityCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AutomaticContinuityCanonicalLaneLean

structure CstarAlgebraContinuityPackage where
  sourceCstar : Type u
  targetCstar : Type v
  homomorphism : sourceCstar → targetCstar
  continuityCondition : Prop
  starPreserving : Prop

structure CstarAlgebraContinuityEvidence (P : CstarAlgebraContinuityPackage) where
  continuityConditionClosed : P.continuityCondition
  starPreservingClosed : P.starPreserving

def CstarAlgebraContinuityClosed (P : CstarAlgebraContinuityPackage) : Prop :=
  P.continuityCondition ∧ P.starPreserving

theorem cstar_algebra_continuity_closed_from_evidence
    (P : CstarAlgebraContinuityPackage) (E : CstarAlgebraContinuityEvidence P) :
    CstarAlgebraContinuityClosed P := by
  exact And.intro E.continuityConditionClosed E.starPreservingClosed

end AutomaticContinuityCanonicalLaneLean
end HautevilleHouse