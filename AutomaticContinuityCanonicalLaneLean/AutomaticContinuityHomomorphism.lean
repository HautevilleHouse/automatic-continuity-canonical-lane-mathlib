import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomaticContinuityCanonicalLaneLean

structure HomomorphismPackage (A : AutomaticContinuityAdmittedObject) where
  continuityCondition : Prop
  algebraicCondition : Prop
  continuityFollows : continuityCondition → algebraicCondition → A.continuityClaim

def HomomorphismClosed (A : AutomaticContinuityAdmittedObject) (H : HomomorphismPackage A) : Prop :=
  H.continuityCondition ∧ H.algebraicCondition

theorem homomorphism_closed_to_conclusion (A : AutomaticContinuityAdmittedObject) (H : HomomorphismPackage A) (h : HomomorphismClosed A H) : A.continuityClaim :=
  H.continuityFollows h.1 h.2

end AutomaticContinuityCanonicalLaneLean
end HautevilleHouse
