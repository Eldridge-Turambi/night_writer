require './lib/braille_dictionary'

class NightWriter

  def initialize
    @input_file = ARGV[0]
    @output_file = ARGV[1]
    @bd = BrailleDictionary.new.braille_dictionary
    @braille_dictionary = {
      'a' => ['0.', '..', '..'],
      'b' => ['0.', '0.', '..'],
      'c' => ['00', '..', '..']
    }
  end


  def read_message
    File.open(@input_file).read
  end

  def convert_english_message
    english_letters = read_message.chars
    braille_letters = []
    english_letters.each do |letter|
      x = find_by_letter(letter)
      braille_letters << x
    end
    braille_letters.compact.transpose

  end

  def read_write
    message = convert_english_message
    File.open(@output_file, 'w') do |file|
      file.write(message)
    end
  end

  def find_by_letter(single_letter)
    braille_code = @braille_dictionary[single_letter]
  end
end


 NightWriter.new.read_write
