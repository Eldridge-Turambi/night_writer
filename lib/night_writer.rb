class NightWriter

  #def initialize(file_path)


  #end

  def print_message
    file = File.open("message.txt").read
    puts file
  end
end

NightWriter.new.print_message
