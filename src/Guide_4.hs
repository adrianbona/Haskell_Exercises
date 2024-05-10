module Guide_4 (
) where

-- Ejercicio 6

-- a) ⊢ if true then zero else succ(zero) : Nat

--                                  ---- ax-zero
--                                  ⊢ zero : Nat
-------- ax-true    ---- ax-zero    ------------- succ
-- ⊢ true : Bool    ⊢ zero : Nat    ⊢ succ(zero) : Nat
--------------------------------------------------- if
-- ⊢ if true then zero else succ(zero) : Nat


-- b) x : Nat, y : Bool ⊢ if true then false else (λz : Bool. z) true : Bool

--                                                                        --------------------------------- ax-v
--                                                                        x : Nat, y : Bool, z : Bool ⊢ z : Bool
--                                                                        --------------------------------------------- ⇒i
--                                                                        x : Nat, y : Bool ⊢ (λz : Bool. z) : Bool ⇒ Bool    x : Nat, y : Bool ⊢ true : Bool
-------------------------- ax-true    ----------------------- ax-false    -------------------------------------------------------------------------------- ⇒e
-- x : Nat, y : Bool ⊢ true : Bool    x : Nat, y : Bool ⊢ false : Bool    x : Nat, y : Bool ⊢ (λz : Bool. z) true : Bool
--------------------------------------------------------------------------------------------------------------------- if
-- x : Nat, y : Bool ⊢ if true then false else (λz : Bool. z) true : Bool


-- c) ⊢ if λx: Bool. x then zero else succ(zero) : Nat

--                                         ---- ax-zero
--                                         ⊢ zero : Nat
------------------- XXX    ---- ax-zero    ------------- succ
-- ⊢ λx: Bool. x : Bool    ⊢ zero : Nat    ⊢ succ(zero) : Nat
---------------------------------------------------------- if
-- ⊢ if λx: Bool. x then zero else succ(zero) : Nat


-- d) x : Bool → Nat, y : Bool ⊢ x y : Nat

--------------------------------------- ax-v    ------------------------------ ax-v
-- x : Bool → Nat, y : Bool ⊢ x : Bool → Nat    x : Bool → Nat, y : Bool ⊢ y : Bool
-------------------------------------------------------------------------------- ⇒e
-- x : Bool → Nat, y : Bool ⊢ x y : Nat


-- Ejercicio 7

-- TIPADO VÁLIDO EN REGLA MODIFICADA

--------------- ax-v
-- x : Nat ⊢ x : Nat
------------- succ
-- ⊢ succ(x) : Nat
---------------------------------- ⇒i2
-- ⊢ (λx : Bool. succ(x)) : Bool ⇒ Nat


-- TIPADO INVÁLIDO EN REGLA ORIGINAL

---------------- ax-v
-- x : Bool ⊢ x : Nat
---------------------- succ
-- x : Bool ⊢ succ(x) : Nat
----------------------------------- ⇒i
-- ⊢ (λx : Bool. succ(x)) : Bool ⇒ Nat


-- Ejercicio 8

-- Determinar qué tipo representa σ en cada uno de los siguientes juicios de tipado

-- a) ⊢ succ(zero) : σ

-- σ representa el tipo Nat

----- ax-zero
-- ⊢ zero : σ
-------------- succ
-- ⊢ succ(zero) : σ


-- b) ⊢ isZero(succ(zero)) : σ

-- σ representa el tipo Bool

------- ax-zero
-- ⊢ zero : Nat
---------------- succ
-- ⊢ succ(zero) : Nat
-------------------- isZero
-- ⊢ isZero(succ(zero)) : σ


-- c) ⊢ if (if true then false else false) then zero else succ(zero) : σ

-- σ representa el tipo Nat

-------- ax-true    ----- ax-false    ----- ax-false                  -- ax-zero
-- ⊢ true : Bool    ⊢ false : Bool    ⊢ false : Bool                  ⊢ zero : σ
------------------------------------------------- if    -- ax-zero    ----------- succ
-- ⊢ if true then false else false : Bool               ⊢ zero : σ    ⊢ succ(zero) : σ
----------------------------------------------------------------------------------- if
-- ⊢ if (if true then false else false) then zero else succ(zero) : σ


-- Ejercicio 10

-- a) x: σ ⊢ isZero(succ(x)) : τ

-- σ representa el tipo Nat, τ representa el tipo Bool

----------- axv
-- x: σ ⊢ x : Nat
---------------- succ
-- x: σ ⊢ succ(x) : Nat
---------------------- isZero
-- x: σ ⊢ isZero(succ(x)) : τ


-- b) ⊢ (λx: σ. x)(λy : Bool. zero) : σ

-- ρ representa el tipo Bool, π representa el tipo Nat, σ representa el tipo Bool ⇒ Nat

------------ axv            ------------- ax-zero
-- x : σ ⊢ x : σ            y : Bool ⊢ zero : Nat
--------------------- ⇒i    ------------------------ ⇒i
-- ⊢ (λx : σ. x) : σ ⇒ σ    ⊢ (λy : Bool. zero) : ρ ⇒ π
---------------------------------------------------- ⇒e
-- ⊢ (λx : σ. x)(λy : Bool. zero) : σ


-- c) y : τ ⊢ if (λx: σ. x) then y else succ(zero) : σ
-- d) x: σ ⊢ x y : τ
-- e) x: σ, y : τ ⊢ x y : τ
-- f) x: σ ⊢ x true : τ
-- g) x: σ ⊢ x true : σ
-- h) x: σ ⊢ x x : τ