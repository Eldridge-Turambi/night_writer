class BrailleDictionary
  attr_reader :braille_dictionary

  def initialize
    # @braille_dictionary = {
    #   'a' => ['0.', '..', '..'],
    #   'b' => ['0.', '0.', '..'],
    #   'c' => ['00', '..', '..']
    # }
  end

  # def find_by_letter(single_letter)
  #   braille_code = @braille_dictionary[single_letter]
  #   puts braille_code
  # end
end
