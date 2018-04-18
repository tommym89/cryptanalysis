#!/usr/bin/ruby
#
alphabet_map = {
	"a" => "a",
	"b" => "b",
	"c" => "c",
	"d" => "d",
	"e" => "e",
	"f" => "f",
	"g" => "g",
	"h" => "h",
	"i" => "i",
	"j" => "j",
	"k" => "k",
	"l" => "l",
	"m" => "m",
	"n" => "n",
	"o" => "o",
	"p" => "p",
	"q" => "q",
	"r" => "r",
	"s" => "s",
	"t" => "t",
	"u" => "u",
	"v" => "v",
	"w" => "w",
	"x" => "x",
	"y" => "y",
	"z" => "z"
}
def rotate(alphabet_map, shift=1)
	alphabet = alphabet_map.keys
	alphabet_map.keys.each do |letter|
		alphabet_map[letter] = alphabet[shift]
		if shift < 25
			shift += 1
		else
			shift = 0
		end
	end
	return alphabet_map.values
end
shift = 1
while shift < 26
	alph_shifted = rotate(alphabet_map, shift)
	File.open("ciphertext.txt").each do |line|
		puts line.tr('a-z', alph_shifted.join(''))
		puts ""
		shift += 1
	end
end
