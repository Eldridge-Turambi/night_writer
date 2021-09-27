require_relative 'english_dictionary'

class NightReader

  def initialize
    @input_file = ARGV[0]
    @output_file = ARGV[1]
  end

  def read_braille_message
    File.open(@input_file).read
  end

  def convert_braille_message
    
  end

  def read_write
    english_string = read_braille_message
    File.open(@output_file, 'w') do |file|
      file.write(english_string)
    end
  end
end

NightReader.new.read_write
