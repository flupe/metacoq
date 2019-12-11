Require Import MetaCoq.Template.All.
Import String List MonadNotation Lists.List.ListNotations.
Import Template.Universes.Level.
Import Template.Universes.Universe.
Import Template.Universes.ConstraintType.

Set Universe Polymorphism.
Set Printing Universes.
Unset Strict Unquote Universe Mode.

Definition test@{i j} (A : Type@{i}) (B : Type@{i}) := A -> B -> Type@{j}.
Definition set_levels levels term :=
  match term with
  | tConst n _ => tConst n levels
  | t => t
  end.

Run TemplateProgram (
  let l1 := fresh_level in
  let l2 := fresh_level in
  tmMonomorphicConstraint (l1, Lt, l2) ;;
  tmMkDefinition "test'" (set_levels [l1; l2] <% test %>)
).

Print test'.