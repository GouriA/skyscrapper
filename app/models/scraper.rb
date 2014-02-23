class Scraper

	def self.scrape
		response = HTTParty.get('http://www.brainyquote.com/quotes/authors/e/e_b_white.html')

		response.body

		doc = Nokogiri::HTML(response.body)

		quotes = []
		doc.css('.bqQuoteLink a').each do |data|
  			quotes << data.content
		end

	quotes.sample

	end	
end