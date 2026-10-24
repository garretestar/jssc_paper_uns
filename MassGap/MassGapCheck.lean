import Mathlib.Tactic

def is_composite (p q : ℕ) : Prop :=
  ∃ (r s : ℕ), p = r + s ∧ q = r + 2 * s

theorem conformal_is_composite : is_composite 2 4 := by
  use 0, 2
  simp

theorem spacetime_is_prime : ¬ is_composite 1 3 := by
  intro h
  rcases h with ⟨r, s, hp, hq⟩
  linarith
