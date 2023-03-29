#spec/caesar-cipher_spec.rb
require "./lib/caesarcipher"

describe "#caesar-cipher" do
    it "works with all caps string" do
        expect(caesar_cipher("MANGOJUICE", 5)).to eql("RFSLTOZNHJ")
    end

    it "works with spaces" do
        expect(caesar_cipher("que sabroso mango", 5)).to eql("vzj xfgwtxt rfslt")
    end

    it "works with non-alphabetical keys" do
        expect(caesar_cipher("wow! so cool!?", 5)).to eql("btb! xt httq!?")
    end
end