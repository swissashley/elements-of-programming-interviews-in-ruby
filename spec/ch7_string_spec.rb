require 'ch7_string'

describe "String interview questions" do
  describe "#int_to_str" do
    it "converts a number to string" do
      expect(int_to_str(12345)).to eq("12345")
      expect(int_to_str(-12345)).to eq("-12345")
    end
  end

  describe "#str_to_int" do
    it "converts a string to number" do
      expect(str_to_int("12345")).to eq(12345)
      expect(str_to_int("-12345")).to eq(-12345)
    end
  end

  describe "#is_palindrome" do
    it "checks if a string is a palindrome" do
      expect(is_palindrome("abccba")).to be_truthy
      expect(is_palindrome("abCcba")).to be_truthy
      expect(is_palindrome("abcba")).to be_truthy
      expect(is_palindrome("abcd eba")).to be_falsey
      expect(is_palindrome("A man, a plan, a canal, Panama.")).to be_truthy
    end
  end

  describe "#reverse_words" do
    it "reverses the word order in a sentence." do
      expect(reverse_words("Victor likes Joanne")).to eq("Joanne likes Victor")
    end
  end

  describe "#look_and_say" do
    it "reverses the word order in a sentence." do
      expect(look_and_say(1)).to eq("11")
      expect(look_and_say(2)).to eq("21")
      expect(look_and_say(3)).to eq("1211")
      expect(look_and_say(4)).to eq("111221")
    end
  end

  describe "#roman_to_dec" do
    it "converts the roman word to decimal number." do
      expect(roman_to_dec('IC')).to eq(99)
      expect(roman_to_dec('XVI')).to eq(16)
      expect(roman_to_dec('LIC')).to eq(149)
    end
  end

  describe "#valid_ip?" do
    it "checks if an input str is a valid ip" do
      expect(valid_ip?("192.168")).to be(false)
      expect(valid_ip?("192.168.1")).to be(false)
      expect(valid_ip?("192.168.1.1")).to be(true)
      expect(valid_ip?("192.168.1.256")).to be(false)
    end
  end

  # describe "#snake_string?" do
  #   it "outputs snake string array" do
  #     arr = [["","e","","",""," ","","","","l","",""],
  #     ["H","","l","","o","","W","","r","","d",""],
  #     ["","","","l","","","","o","","","","!"],
  #   ]
  #     expect(snake_string("Hello World!")).to be(arr)
  #   end
  # end

  describe "#rle_encoding" do
    it "encodes a string" do
      expect(rle_encoding("abcccdde")).to eq("1a1b3c2d1e")
    end
  end

  describe "#rle_decoding" do
    it "decodes a string" do
      expect(rle_decoding("1a1b3c2d1e")).to eq("abcccdde")
    end
  end

  describe "#substring_idx" do
    it "check the occourances of a substring" do
      expect(substring_idx("abc abcabcbabc", "abc")).to eq([0,4,7,11])
    end
  end
end
