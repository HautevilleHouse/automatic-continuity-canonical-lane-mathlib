import AutomaticContinuityCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AutomaticContinuityCanonicalLaneLean

structure HomomorphismContinuityPackage where
  sourceGroup : Type u
  sourceTopology : TopologicalSpace sourceGroup
  targetGroup : Type u
  targetTopology : TopologicalSpace targetGroup
  groupHomomorphism : sourceGroup → targetGroup
  algebraicProperties : Prop
  automaticContinuityClaim : Prop
  continuityJustified : Prop

structure HomomorphismContinuityEvidence (P : HomomorphismContinuityPackage) where
  automaticContinuityClaimClosed : P.automaticContinuityClaim
  continuityJustifiedClosed : P.continuityJustified

def HomomorphismContinuityClosed (P : HomomorphismContinuityPackage) : Prop :=
  P.automaticContinuityClaim ∧ P.continuityJustified

theorem homomorphism_continuity_closed_from_evidence
    (P : HomomorphismContinuityPackage) (E : HomomorphismContinuityEvidence P) :
    HomomorphismContinuityClosed P := by
  exact And.intro E.automaticContinuityClaimClosed E.continuityJustifiedClosed

end AutomaticContinuityCanonicalLaneLean
end HautevilleHouse