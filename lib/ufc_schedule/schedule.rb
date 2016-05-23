class UfcSchedule::Schedule
	attr_accessor :name, :network, :date, :venue

	def self.today
		#puts "UFC 200"

		fight_1 = self.new
		fight_1.name = "UFC 200"
		fight_1.network = "Live on PPV"
		fight_1.date = "May, 9"
		fight_1.venue = "Mandalay Bay Events Center, Las Vegas, NV"

		[fight_1]


	end


	#def self.scrape_rankings
	#	doc = Nokogiri::HTML(open("http://www.ufc.com/schedule/event"))
	#end

end
