class Timer
	attr_accessor :seconds, :time_string

	def initialize
		@seconds = 0
	end


	def seconds=(number_of_seconds)
			hours = number_of_seconds / 3600
			number_of_seconds -= hours * 3600
			minutes = number_of_seconds / 60
			number_of_seconds -= minutes * 60
			hours < 10 ? (hours_string = "0" + hours.to_s) : (hours_string = hours.to_s)
			minutes < 10 ? (minutes_string = "0" + minutes.to_s) : (minute_strings = minutes.to_s)
			number_of_seconds < 10 ? (seconds_string = "0" + number_of_seconds.to_s) : (seconds_string = number_of_seconds.to_s)
			@time_string = hours_string + ":" + minutes_string + ":" + seconds_string
	end
end
