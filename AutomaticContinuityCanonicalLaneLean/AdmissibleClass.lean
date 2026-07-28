import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomaticContinuityCanonicalLaneLean

structure AutomaticContinuitySpace where
  carrier : Type
  topology : TopologicalSpace carrier
  algebra : Type

structure AutomaticContinuityAdmittedObject where
  space : AutomaticContinuitySpace
  homomorphismDefined : Prop
  continuityCondition : Prop
  conclusion : Prop

structure AdmissibleClass where
  object : AutomaticContinuityAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AutomaticContinuityCanonicalLaneLean
end HautevilleHouse