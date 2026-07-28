import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomaticContinuityCanonicalLaneLean

structure AutomaticContinuityConditionPackage (A B : TopologicalAlgebraPackage) where
  everyAlgebraHomomorphismContinuous : Prop
  homomorphismDomain : A
  homomorphismCodomain : B

def AutomaticContinuityConditionClosed {A B : TopologicalAlgebraPackage}
    (C : AutomaticContinuityConditionPackage A B) : Prop :=
  C.everyAlgebraHomomorphismContinuous

structure AutomaticContinuityConditionEvidence {A B : TopologicalAlgebraPackage}
    (C : AutomaticContinuityConditionPackage A B) where
  everyAlgebraHomomorphismContinuousClosed : C.everyAlgebraHomomorphismContinuous

theorem automatic_continuity_condition_closed_from_evidence
    {A B : TopologicalAlgebraPackage} (C : AutomaticContinuityConditionPackage A B)
    (E : AutomaticContinuityConditionEvidence C) :
    AutomaticContinuityConditionClosed C := by
  exact E.everyAlgebraHomomorphismContinuousClosed

end AutomaticContinuityCanonicalLaneLean
end HautevilleHouse