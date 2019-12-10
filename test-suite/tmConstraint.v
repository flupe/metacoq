Require Import MetaCoq.Template.All.
Import String List MonadNotation.
Import Template.Universes.Level.
Import Template.Universes.Universe.
Import Template.Universes.ConstraintType.

Run TemplateProgram (
  tmMonomorphicUniverse "a" ;;
  tmMonomorphicUniverse "b" ;;
  tmMonomorphicConstraint (Level "a", Lt, Level "b")
).

Universe a.
Constraint Set < Set.

Definition f (A : Type@{a}) (B : Type@{b}) := unit.