Ideas for MetaCoq
------------------

Boilerplate:
------------

Projections
-----------

Write generators for the selectors of an inductive type (ci_proj : I ->
option ti) for each constructor [ci : ti -> I].
Lifting to inductive families requires dependent pattern-matchings

Protestant style:
-----------------

Write a translation of inductive families to parametric inductive
types + equalities, and generate the proof of type equivalence.
