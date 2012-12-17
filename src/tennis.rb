class Tennis

	def initialize
		@score_printer = TennisScorePrinter.new
		@score_1 = 0
		@score_2 = 0
	end

  def print_score
    @score_1 == 3 && @score_2 == 3? 'DEUCE' : @score_printer.print(@score_1, @score_2) + '-' + @score_printer.print(@score_2, @score_1)
	end

	def print_score_1
		@score_printer.print(@score_1, @score_2)
	end

	def print_score_2
		@score_printer.print(@score_2, @score1)	
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
	def print(score, other)
    score == 4 && other == 3? 'ADV' : SCORES[score]	
	end
end
