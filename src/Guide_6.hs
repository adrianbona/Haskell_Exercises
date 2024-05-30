module Guide_6 (
) where

-- Ejercicio 1

-- Dados F = {d, f, g} (símbolos de función), donde: d tiene aridad 0, f aridad 2 y g aridad 3

-- i. g(d, d)

-- No es correcto, ya que g tiene aridad 3 y se le están pasando 2 argumentos.


-- ii. f(X, g(Y, Z), d)

-- No es correcto, ya que f tiene aridad 2 y se le están pasando 3 argumentos.


-- iii. g(X, f(d, Z), d)

-- Las aridades son correctas pero se están mezclando símbolos de función con variables.


-- iv. g(X, h(Y, Z), d)

-- No es correcto, ya que h no pertenece al conjunto de funciones F.


-- v. f(f(g(d, X), f(g(d, X), Y, g(Y, d)), g(d, d)), g(f(d, d, X), d), Z)

-- No es correcto, ya que f tiene aridad 2 y se le están pasando 3 argumentos y g tiene aridad 3 y se le están pasando 2 argumentos.


-- Ejercicio 2

-- Sean c una constante, f un símbolo de función de aridad 1 y S y B, dos símbolos de predicado binarios.

-- i. S(c, X)

-- Es una fórmula atómica, un predicado binario con dos términos.


-- ii. B(c, f(c))

-- Es una fórmula atómica, un predicado binario con dos términos.


-- iii. f(c)

-- No es una fórmula ya que la gramática no lo permite.


-- iv. B(B(c, X), Y)

-- No es una fórmula ya que la gramática no permite un predicado binario con una variable y un predicado binario.


-- v. S(B(c), Z)

-- No es una fórmula ya que la gramática no permite un predicado binario con un predicado binario y una variable.


-- vi. B(X, Y) ⇒ ∃Z . S(Z, Y)

-- Es una fórmula formada por una implicación cuyo antecedente es un predicado binario y cuyo consecuente es una cuantificación existencial.


-- vii. S(X, Y) ⇒ S(Y, f(f(X)))

-- Es una fórmula formada por una implicación cuyo antecedente es un predicado binario y cuyo consecuente es también un predicado binario.

-- viii. B(X, Y) ⇒ f(X)

-- No es una fórmula ya que la gramática no permite una implicación cuyo consecuente sea un símbolo de función.


-- ix. S(X, f(Y)) ∧ B(X, Y)

-- Es una fórmula formada por una conjunción cuyos términos son dos predicados binarios.


-- x. ∀X . B(X, f(X))

-- Es una fórmula formada por una cuantificación universal que consta de un predicado binario.


-- xi. ∃X . B(Y, X(c))

-- Es una fórmula formada por una cuantificación existencial que consta de un predicado binario.
-- Sin embargo X es una variable y no una función con aridad.


-- Ejercicio 3

-- Sea σ = ∃X . P(Y, Z) ∧ ∀Y . ¬Q(Y, X) ∨ P(Y, Z)
-- Reescribo como σ = ∃X' . P(Y, Z) ∧ ∀Y' . ¬Q(Y', X) ∨ P(Y, Z)

-- i. Identificar todas las variables libres y ligadas

-- Variables libres: Y, Z, X, Z, variables ligadas: X', Y'.


-- ii. Calcular:

-- σ[X := W]

-- ∃X' . P(Y, Z) ∧ ∀Y' . ¬Q(Y', X) ∨ P(Y, Z)
-- ∃X' . P(Y, Z) ∧ ∀Y' . ¬Q(Y', W) ∨ P(Y, Z)


-- σ[Y := W]

-- ∃X' . P(Y, Z) ∧ ∀Y' . ¬Q(Y', X) ∨ P(Y, Z)
-- ∃X' . P(W, Z) ∧ ∀Y' . ¬Q(Y', X) ∨ P(W, Z)


-- σ[Y := f(X)]

-- ∃X' . P(Y, Z) ∧ ∀Y' . ¬Q(Y', X) ∨ P(Y, Z)
-- ∃X' . P(f(X), Z) ∧ ∀Y' . ¬Q(Y', X) ∨ P(f(X), Z)

-- σ[Z := g(Y, Z)]

-- ∃X' . P(Y, Z) ∧ ∀Y' . ¬Q(Y', X) ∨ P(Y, Z)
-- ∃X' . P(Y, g(Y, Z)) ∧ ∀Y' . ¬Q(Y', X) ∨ P(Y, g(Y, Z))


-- Ejericio 4

-- Sea σ = ¬∀X . (∃Y . P(X, Y, Z)) ∧ ∀Z . P(X, Y, Z)
-- Reescribo como σ = ¬∀X' . (∃Y' . P(X', Y', Z)) ∧ ∀Z' . P(X, Y, Z')

-- i. Identificar todas las variables libres y ligadas

-- Variables libres: Z, X, Y, variables ligadas: X', Y', Z'.


-- ii. Calcular

-- σ[X := t] con t = g(f(g(Y,Y)),Y)

-- ¬∀X' . (∃Y' . P(X', Y', Z)) ∧ ∀Z' . P(X, Y, Z')
-- ¬∀X' . (∃Y' . P(X', Y', Z)) ∧ ∀Z' . P(t, Y, Z')
-- ¬∀X' . (∃Y' . P(X', Y', Z)) ∧ ∀Z' . P(g(f(g(Y,Y)),Y), Y, Z')


-- σ[Y := t] con t = g(f(g(Y,Y)),Y)

-- ¬∀X' . (∃Y' . P(X', Y', Z)) ∧ ∀Z' . P(X, Y, Z')
-- ¬∀X' . (∃Y' . P(X', Y', Z)) ∧ ∀Z' . P(X, t, Z')
-- ¬∀X' . (∃Y' . P(X', Y', Z)) ∧ ∀Z' . P(X, g(f(g(Y,Y)),Y), Z')


-- σ[Z := t] con t = g(f(g(Y,Y)),Y)

-- ¬∀X' . (∃Y' . P(X', Y', Z)) ∧ ∀Z' . P(X, Y, Z')
-- ¬∀X' . (∃Y' . P(X', Y', t)) ∧ ∀Z' . P(X, Y, Z')
-- ¬∀X' . (∃Y' . P(X', Y', g(f(g(Y,Y)),Y))) ∧ ∀Z' . P(X, Y, Z')


-- Ejercicio 5

-- Para unir las expresiones que unifican entre si pruebo todas las combinaciones que partan de los mismos predicados.
-- Las agrupo y pruebo cada unificación si alcanzo un conjunto vacío de términos o un fallo.

-- P(f(X)) | P(a) | P(Y)
-- P(X) | P(f(a)) | P(g(Z))

-- i) P(f(X)) y P(X)

-- { f(X) ≟ X } Swap ⇒ { X ≟ f(X) } OccursCheck ⇒ FALLA


-- ii) P(f(X)) y P(f(a))

-- { f(X) ≟ f(a) } Decompose ⇒ { X ≟ a } Elim { X := a } ⇒ ø
-- MGU = { X := a }


-- iii) P(f(X)) y P(g(Z))

-- { f(X) ≟ g(Z) } Clash ⇒ FALLA


-- iv) P(a) y P(X)

-- { a ≟ X } Elim { X := a } ⇒ ø
-- MGU = { X := a }


-- v) P(a) y P(f(a))

-- { a ≟ f(a) } OccursCheck ⇒ FALLA


-- vi) P(a) y P(g(Z))

-- { a ≟ g(Z) } Elim { a := g(Z) } ⇒ ø
-- MGU = { a := g(Z) }


-- vii) P(Y) y P(X)

-- { Y ≟ X } Elim { Y := X } ⇒ ø
-- MGU = { Y := X }


-- viii) P(Y) y P(f(a))

-- { Y ≟ f(a) } Elim { Y := f(a) } ⇒ ø
-- MGU = { Y := f(a) }


-- ix) P(Y) y P(g(Z))

-- { Y ≟ g(Z) } Elim { Y := g(Z) } ⇒ ø
-- MGU = { Y := g(Z) }


-- Q(X,f(Y)) | Q(X,f(Z)) | Q(X,f(a))
-- Q(f(Y),X) | Q(f(Y),f(X)) | Q(f(Y),Y)

-- i) Q(X,f(Y)) y Q(f(Y),X)

-- { X ≟ f(Y), f(Y) ≟ X } Swap ⇒ { X ≟ f(Y), X ≟ f(Y) } Elim { X := f(Y) } ⇒ ø
-- MGU = { X := f(Y) }


-- ii) Q(X,f(Y)) y Q(f(Y),f(X))

-- { X ≟ f(Y), f(Y) ≟ f(X) }
-- Decompose ⇒ { X ≟ f(Y), Y ≟ X }
-- Elim { X := f(Y) } ⇒ { Y ≟ X }{ X := f(Y) } ⇒ { Y ≟ f(Y) }
-- OccursCheck ⇒ FALLA


-- iii) Q(X,f(Y)) y Q(f(Y),Y)

-- { X ≟ f(Y), f(Y) ≟ Y } Swap ⇒ { X ≟ f(Y), Y ≟ f(Y) } OccursCheck ⇒ FALLA


-- iv) Q(X,f(Z)) y Q(f(Y),X)

-- { X ≟ f(Y), f(Z) ≟ X }
-- Swap ⇒ { X ≟ f(Y), X ≟ f(Z) }
-- Elim { X := f(Y) } ⇒ { X ≟ f(Z) }{ X := f(Y) } = { f(Y) ≟ f(Z) }
-- Decompose ⇒ { Y ≟ Z }
-- Elim { Y := Z } ⇒ ø
-- MGU = { X := f(Y), Y := Z }


-- v) Q(X,f(Z)) y Q(f(Y),f(X))

-- { X ≟ f(Y), f(Z) ≟ f(X) }
-- Decompose ⇒ { X ≟ f(Y), Z ≟ X }
-- Elim { X := f(Y) } ⇒ { Z ≟ X }{ X := f(Y) } = { Z ≟ f(Y) }
-- Elim { Z := f(Y) } ⇒ ø
-- MGU = { X := f(Y), Z := f(Y) }


-- vi) Q(X,f(Z)) y Q(f(Y),Y)

-- { X ≟ f(Y), f(Z) ≟ Y }
-- Swap ⇒ { X ≟ f(Y), Y ≟ f(Z) }
-- Elim { X := f(Y) } ⇒ { Y ≟ f(Z) }{ X := f(Y) } = { Y ≟ f(Z) }
-- Elim { Y := f(Z) } ⇒ ø
-- MGU = { X := f(Y), Y := f(Z) }


-- vii) Q(X,f(a)) y Q(f(Y),X)

-- { X ≟ f(Y), f(a) ≟ X }
-- Swap ⇒ { X ≟ f(Y), X ≟ f(a) }
-- Elim { X := f(Y) } ⇒ { X ≟ f(a) }{ X := f(Y) } = { f(Y) ≟ f(a) }
-- Decompose ⇒ { Y ≟ a }
-- Elim { Y := a } ⇒ ø
-- MGU = { X := f(Y), Y := a }


-- viii) Q(X,f(a)) y Q(f(Y),f(X))

-- { X ≟ f(Y), f(a) ≟ f(X) }
-- Decompose ⇒ { X ≟ f(Y), a ≟ X }
-- Elim { X := f(Y) } ⇒ { a ≟ X }{ X := f(Y) } = { a ≟ f(Y) }
-- Elim { a := f(Y) } ⇒ ø
-- MGU = { X := f(Y), a := f(Y) }


-- ix) Q(X,f(a)) y Q(f(Y),Y)

-- { X ≟ f(Y), f(a) ≟ Y }
-- Swap ⇒ { X ≟ f(Y), Y ≟ f(a) }
-- Elim { X := f(Y) } ⇒ { Y ≟ f(a) }
-- Elim { Y := f(a) } ⇒ ø
-- MGU = { X := f(Y), Y := f(a) }


-- X | f(X)
-- f(f(a)) | f(g(Y))

-- i) X y f(f(a))

-- { X ≟ f(f(a)) } Elim { X := f(f(a)) } ⇒ ø
-- MGU = { X := f(f(a)) }


-- ii) X y f(g(Y))

-- { X ≟ f(g(Y)) } Elim { X := f(g(Y)) } ⇒ ø
-- MGU = { X := f(g(Y)) }


-- iii) f(X) y f(f(a))

-- { f(X) ≟ f(f(a)) } Decompose ⇒ { X ≟ f(a) } Elim { X := f(a) } ⇒ ø
-- MGU = { X := f(a) }


-- iv) f(X) y f(g(Y))

-- { f(X) ≟ f(g(Y)) } Decompose ⇒ { X ≟ g(Y) } Elim { X := g(Y) } ⇒ ø
-- MGU = { X := g(Y) }


-- Ejercicio 6

-- i. f(X, X, Y) y f(a, b, Z)

-- { f(X, X, Y) ≟ f(a, b, Z) }
-- Decompose ⇒ { X ≟ a, X ≟ b, Y ≟ Z }
-- Elim { X := a } ⇒ { X ≟ b, Y ≟ Z }{ X := a } = { a ≟ b, Y ≟ Z }
-- Clash ⇒ FALLA


-- ii. Y y f(X)
-- iii. f(g(c, Y), X)) y f(Z, g(Z, a))
-- iv. f(a) y g(Y)
-- v. f(X) y X
-- vi. g(X, Y) y g(f(Y), f(X))





