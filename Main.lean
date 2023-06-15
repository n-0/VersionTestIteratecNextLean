import Mathlib.Data.Set.Basic
open Set

def company := "iteratec"

def main : IO Unit :=
  IO.println s!"Hello, {company} !"

def myCustomAdder (adding: Nat) := fun add => add + adding
def fiver := myCustomAdder 3
#eval (fiver) 3

/-
You can derive all kinds of wild propositions from contradictory hypotheses.
-/
lemma contra (P Q : Prop) : (P ∧ ¬ P) → Q := by
  intro h
  cases h with
  | intro p np =>
    exfalso
    apply np
    assumption

def someSetA: Set Nat := {1, 2, 3}
def someSetB: Set Nat := {3, 4, 5}
def three: Nat := 3
def threeA : three ∈ someSetA := by
  unfold someSetA
  unfold three
  simp at *
