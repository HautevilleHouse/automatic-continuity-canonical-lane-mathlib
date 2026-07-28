import AutomaticContinuityCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace AutomaticContinuityCanonicalLaneLean

def ConstrainedAutomaticContinuityClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_automatic_continuity_endgame (A : AdmissibleClass) :
    ConstrainedAutomaticContinuityClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AutomaticContinuityCanonicalLaneLean
end HautevilleHouse