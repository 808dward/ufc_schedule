class UfcSchedule::CLI

	def call
		list_schedule
		menu
		goodbye
	end

	def list_schedule
		puts "UFC Schedule:"
		@schedules = UfcSchedule::Schedule.today
	end

	def menu
		input = nil
		while input != "exit"
		puts "Please select the event you would like to learn more about or type list or exit."

			input = gets.strip.downcase
			case input
			when "1"
				puts <<-DOC.gsub /^\s*/, ''
				---UFC 199---
				 ---Sunday, May 29---
				 ---Las Vegas, NV---
				 DOC
			when "2"
				puts <<-DOC.gsub /^\s*/, ''
				---UFC Fight Night 31---
				 ---Saturday, June 4---
				 ---Reno, NV---
				 DOC
		    when "list"
		    	list_schedule
		    else 
		    	puts "not sure what you want, type list or exit"
			end
		end
	end

	def goodbye
		puts "Check back for updates to the UFC Schedule"
	end

end