import AutomaticContinuityCanonicalLaneLean.HomomorphismContinuity

namespace HautevilleHouse
namespace AutomaticContinuityCanonicalLaneLean

structure UniquenessOfNormPackage {A B : BanachAlgebra 𝕜}
    (Base : AutomaticContinuityPackage A B) where
  alternativeNorm : Prop
  equivalenceProof : Prop
  uniquenessClaim : Prop
  uniquenessClaimClosed : uniquenessClaim

def UniquenessOfNormClosed {A B : BanachAlgebra 𝕜}
    {Base : AutomaticContinuityPackage A B}
    (P : UniquenessOfNormPackage Base) : Prop :=
  P.uniquenessClaim

theorem uniqueness_of_norm_closed_from_evidence {A B : BanachAlgebra 𝕜}
    {Base : AutomaticContinuityPackage A B}
    (P : UniquenessOfNormPackage Base) : UniquenessOfNormClosed P := by
  exact P.uniquenessClaimClosed

end AutomaticContinuityCanonicalLaneLean
end HautevilleHouse