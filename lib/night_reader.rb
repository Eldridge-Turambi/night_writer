require_relative 'english_dictionary'
require 'json'

class NightReader

  def initialize
    @input_file = ARGV[0]
    @output_file = ARGV[1]
    @english_dictionary_1 = EnglishDictionary.new
  end

  def read_braille_message
    File.open(@input_file).read
  end

  def convert_braille_message
    braille_letters = JSON.parse( read_braille_message.tr("'", '"') )
    english_letters = []

    braille_letters.each do |letter|
      english_letters << @english_dictionary_1.translate_braille_to_letter(letter)
    end
    return english_letters.join
  end

  def read_write
    english_string = convert_braille_message
    File.open(@output_file, 'w') do |file|
      file.write(english_string)
    end
  end
end

NightReader.new.read_write
