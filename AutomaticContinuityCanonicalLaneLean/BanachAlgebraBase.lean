import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomaticContinuityCanonicalLaneLean

structure BanachAlgebra (𝕜 : Type*) [NontriviallyNormedField 𝕜] where
  carrier : Type*
  norm : carrier → ℝ
  algebra : Algebra 𝕜 carrier
  normedAlgebra : NormedAlgebra 𝕜 carrier
  complete : CompleteSpace carrier

structure BanachAlgebraHomomorphism (A B : BanachAlgebra 𝕜) where
  map : A.carrier → B.carrier
  linear : LinearMap 𝕜 A.carrier B.carrier
  multiplicative : ∀ x y, map (x * y) = map x * map y
  unitPreserving : map 1 = 1
  conclusion : Prop

def AutomaticContinuityWitnessClosed (φ : BanachAlgebraHomomorphism A B) : Prop :=
  φ.conclusion

end AutomaticContinuityCanonicalLaneLean
end HautevilleHouse