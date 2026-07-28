import HautevilleHouse.AutomaticContinuityCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AutomaticContinuityCanonicalLaneLean

structure CstarAutomaticContinuityPackage where
  domainAlgebra : Type u
  codomainAlgebra : Type v
  homomorphism : domainAlgebra → codomainAlgebra
  algebraHomomorphism : Prop
  automaticContinuityCondition : Prop
  homomorphismContinuous : Prop

structure CstarAutomaticContinuityEvidence (P : CstarAutomaticContinuityPackage) where
  algebraHomomorphismClosed : P.algebraHomomorphism
  automaticContinuityConditionClosed : P.automaticContinuityCondition
  homomorphismContinuousClosed : P.homomorphismContinuous

def CstarAutomaticContinuityClosed (P : CstarAutomaticContinuityPackage) : Prop :=
  P.algebraHomomorphism ∧ P.automaticContinuityCondition ∧ P.homomorphismContinuous

theorem cstar_automatic_continuity_closed_from_evidence
    (P : CstarAutomaticContinuityPackage)
    (E : CstarAutomaticContinuityEvidence P) :
    CstarAutomaticContinuityClosed P := by
  exact And.intro E.algebraHomomorphismClosed
    (And.intro E.automaticContinuityConditionClosed E.homomorphismContinuousClosed)

end AutomaticContinuityCanonicalLaneLean
end HautevilleHouse