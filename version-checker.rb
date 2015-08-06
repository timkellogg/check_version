require('colorize')

puts "\n\n\n"
puts "Checking language/tooling versions...".colorize(:red)
puts "\n\n\n"
programs_to_check = %w[node npm ruby rails rspec bundle gem vim gcc python php ].each_with_index do |program, index| 
	case index
	when 0, 1, 4, 8
		print "#{program}: " 
		puts `#{program} --version`
	else 
		puts `#{program} --version`
	end 
end
puts "\n\n\n"
puts "Checking homebrew tools".colorize(:red)
puts "\n\n\n"
homebrew_installs = %w[brew tree bro man].each_with_index do |brew, index|

	case index
	when 0
		print "#{brew}: "
		puts `#{brew} --version`
	else 
		puts `#{brew} --version`
	end
end



