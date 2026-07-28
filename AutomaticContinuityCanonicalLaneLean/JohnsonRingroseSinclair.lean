import AutomaticContinuityCanonicalLaneLean.HomomorphismContinuity

namespace HautevilleHouse
namespace AutomaticContinuityCanonicalLaneLean

structure JohnsonRingroseSinclairPackage {A B : BanachAlgebra 𝕜}
    (Base : AutomaticContinuityPackage A B) where
  homomorphismFromCStar : Prop
  automaticContinuity : Prop
  proofTerm : automaticContinuity

def JohnsonRingroseSinclairClosed {A B : BanachAlgebra 𝕜}
    {Base : AutomaticContinuityPackage A B}
    (P : JohnsonRingroseSinclairPackage Base) : Prop :=
  P.homomorphismFromCStar ∧ P.automaticContinuity

theorem johnson_ringrose_sinclair_closed_from_evidence {A B : BanachAlgebra 𝕜}
    {Base : AutomaticContinuityPackage A B}
    (P : JohnsonRingroseSinclairPackage Base)
    (E : P.homomorphismFromCStar ∧ P.automaticContinuity) :
    JohnsonRingroseSinclairClosed P := by
  exact E

end AutomaticContinuityCanonicalLaneLean
end HautevilleHouse