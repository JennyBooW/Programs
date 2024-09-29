-- Get name from the user and output it.
def main : IO Unit := do
  let stdio  <- IO.getStdin
  let stdout <- IO.getStdout

  stdout.putStrLn "Hello! What is your name friend!"
  let input <- stdio.getLine
  let name := input.dropRightWhile Char.isWhitespace

  stdout.putStrLn s!"Hello {name}."
