# frozen_string_literal: true
def caesar_cipher(string, shift)
  numbers = []
  string.split('').each do |i|
    numbers.push(string[i].ord)
  end

  shifted = []
  numbers.each do |i|
    if i >= 65 && i <= 90
      i += shift
      i -= 26 if i > 90
    elsif i >= 97 && i <= 122
      i += shift
      i -= 26 if i > 122
    end
    shifted.push(i.chr)
  end
  shifted = shifted.join
end

puts caesar_cipher('What a string!', 5)

# A-Z is 65-90
# a-z is 97-122
