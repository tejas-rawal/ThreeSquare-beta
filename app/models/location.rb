class Location < ActiveRecord::Base

	def snippet
		self.review.truncate(75)
	end

	def next
	end

	def previous
	end
end
