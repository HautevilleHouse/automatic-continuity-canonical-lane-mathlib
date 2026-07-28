import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomaticContinuityCanonicalLaneLean

structure JohnsonTheoremPackage (A : TopologicalAlgebraPackage) where
  algebraIsBanach : Prop
  algebraIsSemisimple : Prop
  automaticContinuityHolds : Prop
  
def JohnsonTheoremClosed (J : JohnsonTheoremPackage A) : Prop :=
  J.algebraIsBanach ∧ J.algebraIsSemisimple ∧ J.automaticContinuityHolds

structure JohnsonTheoremEvidence (J : JohnsonTheoremPackage A) where
  algebraIsBanachClosed : J.algebraIsBanach
  algebraIsSemisimpleClosed : J.algebraIsSemisimple
  automaticContinuityHoldsClosed : J.automaticContinuityHolds

theorem johnson_theorem_closed_from_evidence (J : JohnsonTheoremPackage A)
    (E : JohnsonTheoremEvidence J) : JohnsonTheoremClosed J := by
  exact And.intro E.algebraIsBanachClosed
    (And.intro E.algebraIsSemisimpleClosed E.automaticContinuityHoldsClosed)

end AutomaticContinuityCanonicalLaneLean
end HautevilleHouse