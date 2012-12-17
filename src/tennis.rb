class Tennis

	def initialize
		@score_printer = TennisScorePrinter.new
		@score_1 = 0
	end
	def print_score
		@score_printer.print(@score_1) + '-0'
	end

	def print_score_1
		@score_printer.print @score_1	
	end

	def print_score_2
		'0'
	end

	def score_1
		@score_1 += 1
	end
end
class TennisScorePrinter
	SCORES = %w{0 15 30 40}
	def print(score)
		SCORES[score]	
	end
end
