import AutomaticContinuityCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace AutomaticContinuityCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "automatic-continuity-canonical-lane",
    theoremName := "automatic-continuity-canonical-lane",
    theoremObject := "Automatic Continuity Theorem",
    classicalBoundary := "classical boundary: automatic continuity property",
    manifoldConstrainedStatement := "manifold-constrained theorem certificate internalized through bridge and gate",
    certificateLane := "manifold_constrained",
    carriedRemainder := "carried remainder: manifold-constrained closure"
  }

theorem theorem_statement_source_key_checked : sourceTheoremStatement.sourceKey = "automatic-continuity-canonical-lane" := by rfl

theorem theorem_statement_theorem_name_checked : sourceTheoremStatement.theoremName = "automatic-continuity-canonical-lane" := by rfl

end AutomaticContinuityCanonicalLaneLean
end HautevilleHouse