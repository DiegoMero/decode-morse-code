message = ".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ..."

@letters = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}

def get_letter (morse_character)
  @letter = @letters[morse_character]
end

def get_word (morse_word)
  @word = morse_word.split.map { |element| get_letter(element) }.join
end

def sentence_decoder(morse_sentence)
  decoded_morse = ''
  morse_sentence.split(/   /).map { |word| decoded_morse = "#{decoded_morse} #{get_word(word)}" }
  decoded_morse
end

print "The morse code '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...' means:  "
puts sentence_decoder(message)
puts " "
