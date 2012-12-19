class TennisScore
	{:player_1 => 0, :player_2 => 0}.each do |player, score|
		send :define_method, (player.to_s + "_scores").to_sym do
			score += 1
		end
		send :define_method, (player.to_s + "_score").to_sym do
			score
		end
	end
end


