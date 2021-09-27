class EnglishDictionary
  attr_reader :english_dictionary

  def initialize
    @english_dictionary = {
      ["0.", "..", ".."] => "a",
      ["0.", "0.", ".."] => "b",
      ["00", "..", ".."] => "c",
      ["00", ".0", ".."] => "d",
      ["0.", ".0", ".."] => "e",
      ["00", "0.", ".."] => "f",
      ["00", "00", ".."] => "g",
      ["0.", "00", ".."] => "h",
      [".0", "0.", ".."] => "i",
      [".0", "00", ".."] => "j",
      ["0.", "..", "0."] => "k",
      ["0.", "0.", "0."] => "l",
      ["00", "..", "0."] => "m",
      ["00", ".0", "0."] => "n",
      ["0.", ".0", "0."] => "o",
      ["00", "0.", "0."] => "p",
      ["00", "00", "0."] => "q",
      ["0.", "00", "0."] => "r",
      [".0", "0.", "0."] => "s",
      [".0", "00", "0."] => "t",
      ["0.", "..", "00"] => "u",
      ["0.", "0.", "00"] => "v",
      [".0", "00", ".0"] => "w",
      ["00", "..", "00"] => "x",
      ["00", ".0", "00"] => "y",
      ["0.", ".0", "00"] => "z",
      ["  ", "  ", "  "] => " ",
      ["..0.", "....", ".0.."] => "A",
      ["..0.", "..0.", ".0.."] => "B",
      ["..00", "....", ".0.."] => "C",
      ["..00", "...0", ".0.."] => "D",
      ["..0.", "...0", ".0.."] => "E",
      ["..00", "..0.", ".0.."] => "F",
      ["..00", "..00", ".0.."] => "G",
      ["..0.", "..00", ".0.."] => "H",
      ["...0", "..0.", ".0.."] => "I",
      ["...0", "..00", ".0.."] => "J",
      ["..0.", "....", ".00."] => "K",
      ["..0.", "..0.", ".00."] => "L",
      ["..00", "....", ".00."] => "M",
      ["..00", "...0", ".00."] => "N",
      ["..0.", "...0", ".00."] => "O",
      ["..00", "..0.", ".00."] => "P",
      ["..00", "..00", ".00."] => "Q",
      ["..0.", "..00", ".00."] => "R",
      ["...0", "..0.", ".00."] => "S",
      ["...0", "..00", ".00."] => "T",
      ["..0.", "....", ".000"] => "U",
      ["..0.", "..0.", ".000"] => "V",
      ["...0", "..00", ".0.0"] => "W",
      ["..00", "....", ".000"] => "X",
      ["..00", "...0", ".000"] => "Y",
      ["..0.", "...0", ".000"] => "Z"
    }
  end
end 
