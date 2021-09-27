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
    braille_letters = read_braille_message
    braille_letters_to_array = braille_letters.split(/\n+/)
    array = braille_letters_to_array.map { |input| input.scan(/../) }.transpose
    array.map { |a| @english_dictionary_1.translate_braille_to_letter(a) }.join
  end

  def read_write
    english_string = convert_braille_message
    File.open(@output_file, 'w') do |file|
      file.write(english_string)
    end
  end
end

NightReader.new.read_write
