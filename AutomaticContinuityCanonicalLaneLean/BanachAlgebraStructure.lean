import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomaticContinuityCanonicalLaneLean

structure BanachAlgebraPackage where
  algebra : BanachAlgebra
  spectrum : algebra.carrier → Set ℂ
  spectralRadius : algebra.carrier → ℝ
  spectralRadiusFormula : Prop

def BanachAlgebraClosed (B : BanachAlgebraPackage) : Prop :=
  B.spectralRadiusFormula

end AutomaticContinuityCanonicalLaneLean
end HautevilleHouse
