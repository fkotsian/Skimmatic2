module StaticPagesHelper
	require 'open-uri'
	require 'nokogiri'

	# returns parsed Nokogiri HTML string
	def pdf_to_html(url)
	end
	
	# searches HTML doc for all <P>'s with a parent div
	def find_all_ps(docurl)
		doc = Nokogiri::HTML(open(docurl))
		doc.xpath('//div/p').each do |node|
			puts node.text
		end
	end
		
		
end
