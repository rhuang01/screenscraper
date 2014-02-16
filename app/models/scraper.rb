class Scraper 
	def self.scrape
		response = HTTParty.get('http://www.brainyquote.com/quotes/authors/e/eminem.html')
		#puts "hello"
		doc = Nokogiri::HTML(response.body)

		quotes = []
		doc.css('.bqQuoteLink').each do |quote|
			quotes << quote.content
		end

		size = quotes.count

		#quotes[rand(size)]
		quotes.sample

	end
end