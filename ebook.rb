require_relative "produto"

class EBook < Produto

	def matches?(query)
		["ebook", "digital"].include?(query)
	end

end