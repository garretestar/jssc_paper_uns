import Mathlib.Data.Real.Basic
import Mathlib.Tactic

theorem cross_node_entanglement (P N : Nat → ℝ)
    (_h_p : ∀ k, P k * P k = 1)
    (_h_n : ∀ k, N k * N k = -1)
    (h_cross : ∀ i j, i ≠ j → P i * N j = 1 / 2) :
    P 1 * N 2 = 1 / 2 := by
  apply h_cross 1 2
  intro h
  cases h

def is_composite (p q : Nat) : Prop :=
  ∃ (r s : Nat), p = r + s ∧ q = r + 2 * s

theorem conformal_is_composite : is_composite 2 4 := by
  exact ⟨0, 2, rfl, rfl⟩

theorem spacetime_is_prime : ¬ is_composite 1 3 := by
  intro ⟨r, s, hp, hq⟩
  omega

theorem next_phase_space_lemma : 2 + 2 = 4 := by
  rfl
