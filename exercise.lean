def main : IO Unit := do
  let test := IO.println "Rainbow!"
  let englishGreeting := IO.println "Hello!"
  IO.println "Bonjour!"
  englishGreeting

#eval main
