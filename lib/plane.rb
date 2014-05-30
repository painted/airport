class Plane
	def initalize
		@flying = false
	end

	def flying?
		@flying
	end

	def airborne!
		@flying = true
		self
	end

	def land!
		@flying = false
		self
	end

	def take_off_from (airport)
		@plane = airport.clearance_request
		@flying = true
	end


end