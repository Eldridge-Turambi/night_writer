class NightWriter

  def initialize
    @input_file = ARGV[0]
    @output_file = ARGV[1]
  end


  def read_message
    File.open(@input_file).read
  end

  def convert_text
    read_message
  end

  def read_write
    message = convert_text
    File.open(@output_file, 'w') do |file|
      file.write(message)
    end
  end
end

# NightWriter.new.print_message
 NightWriter.new.read_write
