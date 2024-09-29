def run_actions: List (IO Unit) -> IO Unit
  | [] => pure ()
  | act :: actions => do
    act
    run_actions actions

def countdown : Nat -> List (IO Unit)
  | 0 => [IO.println "Blast off!"]
  | n + 1 => IO.println s!"{n + 1}" :: countdown n

def from6 : List (IO Unit) := countdown 6

def main : IO Unit := run_actions from6
