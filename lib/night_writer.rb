require './lib/braille_dictionary'

class NightWriter

  def initialize
    @input_file = ARGV[0]
    @output_file = ARGV[1]
    @bd = BrailleDictionary.new.braille_dictionary
  end


  def read_message
    File.open(@input_file).read
  end

  def convert_english_message
    english_letters = read_message.chars
    english_letters.each do |letter|
      letter.find_by_letter()

    end
  end

  def read_write
    message = convert_english_message
    File.open(@output_file, 'w') do |file|
      file.write(message)
    end
  end
end


 NightWriter.new.read_write
