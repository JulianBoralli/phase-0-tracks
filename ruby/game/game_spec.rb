# RSpec
# 'describe' block for each group of tests  
  # 'it' block for each individual test
    # expect(<YOUR CODE>).to eq <RESULT>

require_relative 'game'

describe WordGame do
  let(:word_game) { WordGame.new("testing") }

  it "check for character included and updated incomplete_word" do
    expect(word_game.include?("t")).to eq true
    expect(word_game.incomplete_word).to eq "t__t___"
  end

  it "check for character not included" do
    expect(word_game.include?("a")).to eq false
  end

  it "check incomplete word under-score" do
    expect(word_game.incomplete_word).to eq "_______"
  end
 
end