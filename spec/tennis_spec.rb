require 'rspec'

require_relative '../src/tennis.rb'

describe 'tennis game' do
	let(:game) { Tennis.new }
	describe 'start' do
		it 'starts with score 0-0' do
			game.print_score.should eq '0-0'
		end
		it 'starts with player 1 score 0' do
			game.print_score_1.should eq '0'
		end
		it 'starts with player 2 score 0' do
			game.print_score_2.should eq '0'
		end
	end

	describe 'scoring' do
		describe 'player 1 first' do
			before(:each) do
				game.score_1 end
			it 'player 1 scores first then score should be 15-0' do
			
				game.print_score.should eq '15-0'
			end
			it 'player 1 scores first then his score should be 15' do
				game.print_score_1.should eq '15'
			end
		end
	end
end
