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
				game.score_1 
      end
			it 'then score should be 15-0' do
				game.print_score.should eq '15-0'
			end
			it 'then his score should be 15' do
				game.print_score_1.should eq '15'
			end
      
      describe 'then player 2 scores' do
        before(:each) do
          game.score_2 
        end
        it 'then score should be 15-15' do
          game.print_score.should eq '15-15'
        end
        it 'then his score should be 15' do
          game.print_score_2.should eq '15'
        end
      end
		end
    describe 'deuce' do
      before(:each) do
        (0..2).each do 
          game.score_1 
          game.score_2
        end
      end
      it 'then score is DEUCE' do
        game.print_score.should eq 'DEUCE'
      end
      describe 'player 1 scores' do
        before(:each) do
          game.score_1
        end
        it 'then score is ADV-40' do
          game.print_score.should eq 'ADV-40'
        end
      end
      describe 'player 2 scores' do
        before(:each) do
          game.score_2
        end
        it 'then score is 40-ADV' do
          game.print_score.should eq '40-ADV'
        end
      end
     end
	end

  describe 'player 2 scores first' do
    before(:each) do
      game.score_2 end
    it 'then score should be 0-15' do
      game.print_score.should eq '0-15'
    end
    it 'then his score should be 15' do
      game.print_score_2.should eq '15'
    end
  end

end
