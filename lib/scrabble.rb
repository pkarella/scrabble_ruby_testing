class String
  scrabble_values = Hash.new()
  scrabble_values.store("A", 1)
  scrabble_values.store("E", 1)
  scrabble_values.store("I", 1)
  scrabble_values.store("O", 1)
  scrabble_values.store("U", 1)
  scrabble_values.store("L", 1)
  scrabble_values.store("N", 1)
  scrabble_values.store("R", 1)
  scrabble_values.store("S", 1)
  scrabble_values.store("T", 1)
  scrabble_values.store("D", 2)
  scrabble_values.store("G", 2)
  scrabble_values.store("B", 3)
  scrabble_values.store("C", 3)
  scrabble_values.store("M", 3)
  scrabble_values.store("P", 3)
  scrabble_values.store("F", 4)
  scrabble_values.store("H", 4)
  scrabble_values.store("V", 4)
  scrabble_values.store("W", 4)
  scrabble_values.store("Y", 4)
  scrabble_values.store("K", 5)
  scrabble_values.store("J", 8)
  scrabble_values.store("X", 8)
  scrabble_values.store("Q", 10)
  scrabble_values.store("Z", 10)

  define_method(:scrabble) do
    score = 0
    letters = self.split("")
    letters.each() do |letter|
      points = scrabble_values.fetch(letter)
      score = score + points
    end
    score
  end
end
