inductive foo : Type
/-- Makes foo. -/
| a : foo
/-- Makes foo of foo. -/ | b : foo -> foo

/-- Doesn't make foo. -/
constant two : nat

open tactic

run_cmd doc_string `foo.a >>= trace
run_cmd doc_string `foo.b >>= trace
run_cmd doc_string `two >>= trace
