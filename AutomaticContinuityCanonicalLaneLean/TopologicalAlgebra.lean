import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomaticContinuityCanonicalLaneLean

structure TopologicalAlgebraPackage where
  carrier : Type u
  topology : TopologicalSpace carrier
  algebraStructure : Algebra ℝ carrier
  continuousMultiplication : Prop
  continuousAddition : Prop
  continuousScalarMultiplication : Prop

def TopologicalAlgebraClosed (A : TopologicalAlgebraPackage) : Prop :=
  A.continuousMultiplication ∧ A.continuousAddition ∧ A.continuousScalarMultiplication

structure TopologicalAlgebraEvidence (A : TopologicalAlgebraPackage) where
  continuousMultiplicationClosed : A.continuousMultiplication
  continuousAdditionClosed : A.continuousAddition
  continuousScalarMultiplicationClosed : A.continuousScalarMultiplication

theorem topological_algebra_closed_from_evidence (A : TopologicalAlgebraPackage)
    (E : TopologicalAlgebraEvidence A) : TopologicalAlgebraClosed A := by
  exact And.intro E.continuousMultiplicationClosed
    (And.intro E.continuousAdditionClosed E.continuousScalarMultiplicationClosed)

end AutomaticContinuityCanonicalLaneLean
end HautevilleHouse