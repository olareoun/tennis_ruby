class Tennis

	def initialize
		@score_printer = TennisScorePrinter.new
		@score_1 = 0
		@score_2 = 0
	end

	def print_score
		@score_printer.print_scores(@score_1,  @score_2)
	end

	def print_score_1
		@score_printer.print_score(@score_1, @score_2)
	end

	def print_score_2
		@score_printer.print_score(@score_2, @score1)	
	end

	def score_1
		@score_1 += 1
	end

	def score_2
		@score_2 += 1
	end

end

class TennisScorePrinter
	SCORES = %w{0 15 30 40}

	def print_score(score, other)
		advantage?(score, other) ? 'ADV' : to_pretty_score(score)
	end

	def print_scores(score_1, score_2)
		if player_wins?(score_1, score_2)
			'WIN Player 1'
		elsif player_wins?(score_2, score_1)
			'WIN Player 2'
		else
			deuce?(score_1, score_2) ? 'DEUCE' : print_score(score_1, score_2) + '-' + print_score(score_2, score_1)
		end
	end

	def to_pretty_score(score)
		case  SCORES[score]
		when nil
			'40'
		else
			SCORES[score]
		end
	end

	def advantage?(score, other)
		score >= 4 && other == score - 1
	end

	def deuce?(score_1, score_2)
		score_1 >= 3 && score_2 == score_1
	end

	def player_wins?(score_1, score_2)
		(score_1 == 3 && score_2 < 3) || (score_1 >= 4 && score_2 <= score_1 - 2)
	end

end
