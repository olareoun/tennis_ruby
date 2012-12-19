require 'rspec'

require_relative '../src/tennis_score.rb'

describe "Tennis Score" do
	it "has methods score for players" do
		score = TennisScore.new
		score.player_1_scores
		score.player_1_score.should eq 2
	end
end

