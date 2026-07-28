import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomaticContinuityCanonicalLaneLean

structure AlgebraHomomorphismPackage (A B : TopologicalAlgebraPackage) where
  homomorphism : A.carrier → B.carrier
  linearOverℝ : Prop
  multiplicative : Prop
  continuous : Prop
  
def AlgebraHomomorphismClosed {A B : TopologicalAlgebraPackage}
    (H : AlgebraHomomorphismPackage A B) : Prop :=
  H.linearOverℝ ∧ H.multiplicative ∧ H.continuous

structure AlgebraHomomorphismEvidence {A B : TopologicalAlgebraPackage}
    (H : AlgebraHomomorphismPackage A B) where
  linearOverℝClosed : H.linearOverℝ
  multiplicativeClosed : H.multiplicative
  continuousClosed : H.continuous

theorem algebra_homomorphism_closed_from_evidence {A B : TopologicalAlgebraPackage}
    (H : AlgebraHomomorphismPackage A B) (E : AlgebraHomomorphismEvidence H) :
    AlgebraHomomorphismClosed H := by
  exact And.intro E.linearOverℝClosed
    (And.intro E.multiplicativeClosed E.continuousClosed)

end AutomaticContinuityCanonicalLaneLean
end HautevilleHouse