require_relative "../lib/caesar_cipher.rb"

describe "the text_is_3_letters_ident method" do
  it "should return the initial string with 3-letters indent" do
    expect(text_is_3_letters_ident("Coucou les petits genies")).to eq("Frxfrx ohv shwlwv jhqlhv")
    expect(text_is_3_letters_ident("Felicie ou la flute des Enfers")).to eq("Iholflh rx od ioxwh ghv Hqihuv")
    expect(text_is_3_letters_ident("Sidney la boucle infernale")).to eq("Vlgqhb od erxfoh lqihuqdoh")
  end
end