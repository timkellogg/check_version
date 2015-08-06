require 'colorize'

def get_user_input
	puts "Do you want to save versions to a file on desktop or only print to terminal? s/t"
	print "> "
	user_input = gets.chomp 
	
	if user_input.downcase == 's' 
		print_to_terminal
		# save_file 									# Coming soon!
	elsif user_input.downcase == 't'
		print_to_terminal 
	else 
		puts "Sorry, please select (s) for save or (t) for terminal"
		get_user_input
	end
end 

def space
	puts "\n\n"
end

def print_to_terminal 

	space 
	puts "Checking language/tooling versions...".colorize(:red)
	space 

	programs_to_check = %w[node npm ruby rails rspec bundle gem vim gcc python php ].each_with_index do |program, index| 
		
		case index
		when 0, 1, 4, 8
			print "#{program}: " 
			puts `#{program} --version`
		else 
			puts `#{program} --version`
		end 
	end

	space
	puts "Checking homebrew tool versions...".colorize(:red)
	space

	homebrew_installs = %w[brew tree bro man].each_with_index do |brew, index|

		case index
		when 0
			print "#{brew}: "
			puts `#{brew} --version`
		else 
			puts `#{brew} --version`
		end
	end
end 

get_user_input