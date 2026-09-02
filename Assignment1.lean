import Batteries
import AutograderLib

/-!
# Homework 1

This homework practices the material from:

* Functions and Implication
* Products and Conjunction
* Coproducts and Disjunction
* Unit and Empty Types, Truth and Falsehood

Replace every `sorry` with a term or proof of the required type. Follow any
proof-style instruction given above an exercise.

Some exercises come in pairs that state the same result twice. Prove the first
of the pair with a direct term and the second in tactic mode.

When an exercise is in tactic mode, build the proof with tactics. Passing
`exact` a single term that does the whole job (a `fun`, a `Sum.elim` or
`Or.elim`, a nested `⟨...⟩`) skips the practice the exercise is for.
-/

namespace Homework1

/-! ## Functions and Implication -/

-- Applying functions. Complete these with direct terms, without tactic mode.

@[autogradedDef 1]
def exercise01 (A B C D : Type)
    (f : A → B → C → D)
    (a : A) (b : B) (c : C) : D :=
  sorry

@[autogradedDef 1]
def exercise02 (A B C : Type)
    (f : A → B) (g : A → B → C) (a : A) : C :=
  sorry

-- Constructing functions and implications.

@[autogradedDef 1]
def exercise03 (A B C : Type) : A → B → C → B := by
  sorry

@[autogradedProof 1]
theorem exercise04 (P Q : Prop) : P → (P → Q) → Q := by
  sorry

@[autogradedProof 1]
theorem exercise05 (P Q R : Prop) (h : P → Q → R) (hP : P) :
    Q → R := by
  sorry

-- Composition and backward use. Reason backward with `apply` at least once in
-- each exercise. In the first, determine which assumption is unnecessary.

@[autogradedProof 2]
theorem exercise06 (P Q R : Prop) (hPQ : P → Q) (hPR : P → R) :
    P → Q := by
  sorry

@[autogradedProof 2]
theorem exercise07 (P Q R : Prop) (hQR : Q → R) :
    P → Q → R := by
  sorry

-- Transitivity of implication. Exercises 08 and 09 state the same
-- implication. Reason backward with `apply` at least once in the tactic proof.

@[autogradedProof 1]
theorem exercise08 (P Q R : Prop) :
    (P → Q) → (Q → R) → (P → R) :=
  sorry

@[autogradedProof 2]
theorem exercise09 (P Q R : Prop) :
    (P → Q) → (Q → R) → (P → R) := by
  sorry

/-! ## Products and Conjunction -/

-- Constructing and projecting pairs. Complete these with direct terms.

@[autogradedDef 1]
def exercise10 (A B : Type) (a : A) (b : B) : B × A :=
  sorry

@[autogradedDef 1]
def exercise11 (A B C : Type) (p : A × B × C) : B :=
  sorry

@[autogradedDef 1]
def exercise12 (A B C : Type) : A × B × C → C × A :=
  sorry

-- Conjunctions and compound goals. Give a direct term for the first.

@[autogradedProof 1]
theorem exercise13 (P Q : Prop) (hP : P) (hQ : Q) : Q ∧ P :=
  sorry

@[autogradedProof 2]
theorem exercise14 (P Q R : Prop) : P ∧ Q ∧ R → R ∧ P := by
  sorry

@[autogradedProof 2]
theorem exercise15 (P Q R : Prop) :
    P → Q → R → (P ∧ Q) ∧ R := by
  sorry

-- Regrouping.

@[autogradedDef 2]
def exercise16 (A B C : Type) :
    A × (B × C) → (A × B) × C := by
  sorry

-- Functions with products and conjunctions. Give direct terms for the
-- Type-level exercises.

@[autogradedDef 1]
def exercise17 (X A B : Type) :
    (X → A × B) → (X → A) × (X → B) :=
  sorry

@[autogradedProof 3]
theorem exercise18 (P Q R : Prop) :
    (P → Q ∧ R) → (P → Q) ∧ (P → R) := by
  sorry

@[autogradedDef 1]
def exercise19 (X A B : Type) :
    (X → A) × (X → B) → (X → A × B) :=
  sorry

-- Composition. Reason backward with `apply` at least once.

@[autogradedProof 2]
theorem exercise20 (P Q R : Prop) :
    (P → Q) ∧ (Q → R) → P → R := by
  sorry

-- Currying and uncurrying. Exercises 21 and 22 state the same function.

@[autogradedDef 1]
def exercise21 (A B C : Type) :
    (A × B → C) → (A → B → C) :=
  sorry

@[autogradedDef 1]
def exercise22 (A B C : Type) :
    (A × B → C) → (A → B → C) := by
  sorry

-- The corresponding uncurrying at the level of propositions.

@[autogradedProof 1]
theorem exercise23 (P Q R : Prop) :
    (P → Q → R) → (P ∧ Q → R) := by
  sorry

/-! ## Coproducts and Disjunction -/

-- Constructing alternatives. Complete these with direct terms.

@[autogradedDef 1]
def exercise24 (A B : Type) (a : A) : B ⊕ A :=
  sorry

@[autogradedDef 1]
def exercise25 (A B C : Type) (b : B) :
    (A ⊕ B) ⊕ C :=
  sorry

@[autogradedProof 1]
theorem exercise26 (P Q R : Prop) (hR : R) :
    P ∨ Q ∨ R :=
  sorry

-- Case analysis. Use `cases ... with` in the second.

@[autogradedProof 2]
theorem exercise27 (P Q : Prop) : P ∧ Q → P ∨ Q := by
  sorry

@[autogradedDef 2]
def exercise28 (A : Type) : A ⊕ A → A := by
  sorry

-- Swapping alternatives. Exercises 29 and 30 state the same function. Use
-- `Sum.elim` in the term proof; make the tactic proof split cases with
-- `rcases` or `cases`.

@[autogradedDef 1]
def exercise29 (A B : Type) : A ⊕ B → B ⊕ A :=
  sorry

@[autogradedDef 2]
def exercise30 (A B : Type) : A ⊕ B → B ⊕ A := by
  sorry

-- Regrouping.

@[autogradedDef 3]
def exercise31 (A B C : Type) :
    A ⊕ (B ⊕ C) → (A ⊕ B) ⊕ C := by
  sorry

-- Three alternatives at once. Use a single `rcases` pattern naming all three
-- cases.

@[autogradedProof 3]
theorem exercise32 (P Q R : Prop) :
    P ∨ Q ∨ R → R ∨ Q ∨ P := by
  sorry

-- Functions and proofs by cases. Give direct terms for the Type-level
-- exercises. Use `Sum.elim` in Exercise 35.

@[autogradedDef 1]
def exercise33 (A B C : Type) :
    (A ⊕ B → C) → (A → C) × (B → C) :=
  sorry

@[autogradedProof 3]
theorem exercise34 (P Q R : Prop) :
    (P ∨ Q → R) → (P → R) ∧ (Q → R) := by
  sorry

@[autogradedDef 1]
def exercise35 (A B C : Type) :
    (A → C) × (B → C) → (A ⊕ B → C) :=
  sorry

@[autogradedProof 2]
theorem exercise36 (P Q R : Prop) :
    (P → R) ∧ (Q → R) → (P ∨ Q → R) := by
  sorry

-- Combining alternatives with products and conjunctions. Give a direct term
-- for the first, using `Sum.elim`.

@[autogradedDef 1]
def exercise37 (A B C : Type) :
    (A × B) ⊕ (A × C) → A × (B ⊕ C) :=
  sorry

@[autogradedProof 2]
theorem exercise38 (P Q R : Prop) :
    (P ∧ Q) ∨ (P ∧ R) → P ∧ (Q ∨ R) := by
  sorry

/-! ## Unit and Empty Types, Truth and Falsehood -/

-- Direct construction and elimination. Complete each with a direct term,
-- without tactic mode.

@[autogradedDef 1]
def exercise39 (A : Type) : A → Unit :=
  sorry

@[autogradedProof 1]
theorem exercise40 (P : Prop) : P → True :=
  sorry

@[autogradedDef 1]
def exercise41 (A : Type) (e : Empty) : A :=
  sorry

@[autogradedProof 1]
theorem exercise42 (P : Prop) (hFalse : False) : P :=
  sorry

-- Combining boundary cases with earlier constructions. Give a direct term for
-- the first.

@[autogradedDef 1]
def exercise43 (A : Type) : (Unit → A) → A :=
  sorry

@[autogradedProof 1]
theorem exercise44 (P Q : Prop) : P ∧ False → Q := by
  sorry

@[autogradedDef 2]
def exercise45 (A : Type) : A ⊕ Empty → A := by
  sorry

-- Zero-branch elimination. Exercises 46 and 47 state the same function. Use
-- `Empty.elim` in the term proof.

@[autogradedDef 1]
def exercise46 (A B : Type) (f : A → Empty) : A → B :=
  sorry

@[autogradedDef 1]
def exercise47 (A B : Type) (f : A → Empty) : A → B := by
  sorry

end Homework1
