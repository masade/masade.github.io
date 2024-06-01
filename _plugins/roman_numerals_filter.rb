module Jekyll
  module RomanNumeralsFilter
    ROMAN_NUMERALS = {
      1000 => 'M',
      900 => 'CM',
      500 => 'D',
      400 => 'CD',
      100 => 'C',
      90 => 'XC',
      50 => 'L',
      40 => 'XL',
      10 => 'X',
      9 => 'IX',
      5 => 'V',
      4 => 'IV',
      1 => 'I'
    }

    def to_roman(input)
      number = input.to_i
      return '' if number <= 0
      roman = ''
      ROMAN_NUMERALS.each do |value, letter|
        roman << letter * (number / value)
        number = number % value
      end
      roman
    end
  end
end

Liquid::Template.register_filter(Jekyll::RomanNumeralsFilter)