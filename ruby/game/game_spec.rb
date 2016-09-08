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
 
 it "check for counter and max guesses" do
    expect(word_game.include?("t")).to eq true
    expect(word_game.count_guesses).to eq 1
    expect(word_game.max_guesses).to eq 21
  end


  it "check for won status" do
    expect(word_game.include?("t")).to eq true
    expect(word_game.won?).to eq false
    expect(word_game.include?("e")).to eq true
    expect(word_game.include?("s")).to eq true
    expect(word_game.include?("i")).to eq true
    expect(word_game.include?("n")).to eq true
    expect(word_game.include?("g")).to eq true
    expect(word_game.won?).to eq true
  end
end