require_relative 'braille_dictionary'

class NightWriter

  def initialize
    @input_file = ARGV[0]
    @output_file = ARGV[1]
    @braille_dictionary_1 = BrailleDictionary.new
  end


  def read_english_message
    File.open(@input_file).read
  end

  def convert_english_message
    english_letters = read_english_message.chars
    braille_letters = []

    english_letters.each do |letter|
      braille_letters << @braille_dictionary_1.translate_letter_to_braille(letter)
    end
    if @input_file.size <= 40
      return braille_letters.compact.transpose.map {|row| row.join("")}.join("\n")
    elsif @input_file.size > 40
      return braille_letters.compact.transpose.map {|row| row.join("")}.join("\n") + "\n"
    end

  end


  def read_write
    braille_string = convert_english_message
    File.open(@output_file, 'w') do |file|
      file.write(braille_string)
    end
    puts "Created braille.txt containing #{braille_string.size} characters"
  end

  # def find_by_letter(single_letter)
  #   braille_code = @braille_dictionary[single_letter]
  # end
end


 NightWriter.new.read_write
